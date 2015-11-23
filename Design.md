# Introduction #

ObjC is dynamically typed, Objective Caml is statically typed. The match cannot be achieved perfectly. This is a best-effort. Instead of starting from exhaustive abstract definitions of type systems and/or syntax, we instead incrementally build a lexer, parser, stub generator and run-time support to include more and more features of various Mac OS X frameworks.


# Details #

## Creating Objc objects and invoking methods on them ##
  * One unique stub code to invoke ObjC methods from OCaml; this stub uses NSInvocation, and should be familiar to anyone having looked at the OLE/Comm dispatching style of  API. One primitive _invoke_ is made available to OCaml, and is inherently **unsafe**. However, we generate wrappers around it that are type safe, for each method that we know how to properly invoke. If we don't (varags, funky pointers, etc.), we simply don't make the method available in OCaml. As we get smarter with type conversion, or adapt naming conventions of methods to handle overloading, we can compile more and more methods.
  * An ObjC class is lifted an OCaml object with as methods the class methods of the Objc Class (class\_NSFoo = object ... end)
  * ObjC objects are lifted to OCaml as opaque objects, using phantom types (e.g. [`NSString] NSObject)
  * and then encapsulated in OCaml objects with all the instance methods of the original ObjC class (class native\_NSFoo = object ... end)
  * all categories for a class are compiled as one OCaml class, as long as they are present in the same file; we don't handle categories spread over multiple files (which happens with NSValue and others)

## Source Organization ##
  * generator/ : contains the "compiler", which parses .h from frameworks headers directories and generates stub code (.ml and .m files)
  * support/ : .ml and .m providing run-time support, such as method invocation, callback support, etc.
  * foundation/ and appkit/: generated stubs
  * mk/ various makefile components for building; please avoid changes in this area or changing the structure of the build system.

## Circular dependencies, protocols ##
  * all classes inherit from NSObject, but NSObject also depends on NSString, NSEnumerator and others. We have to find the cycles in the dependency order and compile the wrapper classes as a list of mutually recursive classes.
  * categories for a class can be added by any .h header. For example, several .h headers add a category to the NSObject class. If we want the methods of these categories to be available in a single wrapper class for NSObject, we need a global approach to compilating a Framework (or even across Frameworks, but that becomes less practical). This is possible, but also tricky in terms of dependencies, because now NSObject depends on a whole bunch of exotic classes. Instead, we will have OCaml classes for categories that are declared in a different header than the primary class and let the user mix and match when appropriate.
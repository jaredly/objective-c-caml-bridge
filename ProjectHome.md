The goal of this project is to provide access to Mac OS X's APIs from OCaml. The project focuses on the set of APIs referred to as "Cocoa", that is APIs based on Objective C artefacts (classes, objects, protocols, methods).
With such access to Cocoa's APIs, it is expected that OCaml programmers would be able to design, develop and build native MacOSX applications with ease.

Some features are explicitly out of scope:
- general support of C-type apis (structs)
- general support for Objective C (this project is targetted at Mac OS X)
- platforms different from MacOSX

The targetted user is an intermediate level developer, at ease with all of OCaml constructs (including modules, classes, labels) and with Cocoa programming.

Update: 2008-03-08. As of [r61](https://code.google.com/p/objective-c-caml-bridge/source/detail?r=61), I am abandoning the idea of using labeled arguments to encode multiple versions of a method (e.g. a: and a:b:). Too many collisions are forcing me to leave out a bunch of methods that may actually be needed...

Update: 2008-02-27. Major update of the stub generation; cleaner and user-code is somewhat less verbose. Still no good way to handle mutually recursive classes such as NSObject and NSString.

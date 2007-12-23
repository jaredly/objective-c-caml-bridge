#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSPathUtilities.h>
value caml_init_NSPathUtilities(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSString");
   arg2 = caml_wrap_id([NSString class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("pathWithComponents:");
   arg2 = caml_wrap_pointer(@selector(pathWithComponents:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("pathComponents:");
   arg2 = caml_wrap_pointer(@selector(pathComponents ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("isAbsolutePath:");
   arg2 = caml_wrap_pointer(@selector(isAbsolutePath ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("lastPathComponent:");
   arg2 = caml_wrap_pointer(@selector(lastPathComponent ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stringByDeletingLastPathComponent:");
   arg2 = caml_wrap_pointer(@selector(stringByDeletingLastPathComponent ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stringByAppendingPathComponent:");
   arg2 = caml_wrap_pointer(@selector(stringByAppendingPathComponent:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("pathExtension:");
   arg2 = caml_wrap_pointer(@selector(pathExtension ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stringByDeletingPathExtension:");
   arg2 = caml_wrap_pointer(@selector(stringByDeletingPathExtension ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stringByAppendingPathExtension:");
   arg2 = caml_wrap_pointer(@selector(stringByAppendingPathExtension:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stringByAbbreviatingWithTildeInPath:");
   arg2 = caml_wrap_pointer(@selector(stringByAbbreviatingWithTildeInPath ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stringByExpandingTildeInPath:");
   arg2 = caml_wrap_pointer(@selector(stringByExpandingTildeInPath ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stringByStandardizingPath:");
   arg2 = caml_wrap_pointer(@selector(stringByStandardizingPath ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stringByResolvingSymlinksInPath:");
   arg2 = caml_wrap_pointer(@selector(stringByResolvingSymlinksInPath ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("stringsByAppendingPaths:");
   arg2 = caml_wrap_pointer(@selector(stringsByAppendingPaths:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("completePathIntoString:caseSensitive:matchesIntoArray:filterTypes:");
   arg2 = caml_wrap_pointer(@selector(completePathIntoString:caseSensitive:matchesIntoArray:filterTypes:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("fileSystemRepresentation:");
   arg2 = caml_wrap_pointer(@selector(fileSystemRepresentation ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("getFileSystemRepresentation:maxLength:");
   arg2 = caml_wrap_pointer(@selector(getFileSystemRepresentation:maxLength:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSArray");
   arg2 = caml_wrap_id([NSArray class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("pathsMatchingExtensions:");
   arg2 = caml_wrap_pointer(@selector(pathsMatchingExtensions:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}

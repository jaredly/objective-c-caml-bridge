// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSPersistentDocument.h>
value caml_init_NSPersistentDocument(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSPersistentDocument");
   arg2 = caml_wrap_id([NSPersistentDocument class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("managedObjectContext:");
   arg2 = caml_wrap_pointer(@selector(managedObjectContext ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setManagedObjectContext:");
   arg2 = caml_wrap_pointer(@selector(setManagedObjectContext:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("managedObjectModel:");
   arg2 = caml_wrap_pointer(@selector(managedObjectModel ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("configurePersistentStoreCoordinatorForURL:ofType:error:");
   arg2 = caml_wrap_pointer(@selector(configurePersistentStoreCoordinatorForURL:ofType:error:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("persistentStoreTypeForFileType:");
   arg2 = caml_wrap_pointer(@selector(persistentStoreTypeForFileType:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("writeToURL:ofType:forSaveOperation:originalContentsURL:error:");
   arg2 = caml_wrap_pointer(@selector(writeToURL:ofType:forSaveOperation:originalContentsURL:error:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("readFromURL:ofType:error:");
   arg2 = caml_wrap_pointer(@selector(readFromURL:ofType:error:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("revertToContentsOfURL:ofType:error:");
   arg2 = caml_wrap_pointer(@selector(revertToContentsOfURL:ofType:error:));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}

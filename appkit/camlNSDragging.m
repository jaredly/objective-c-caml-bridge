// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/AppKit.framework/Headers/NSDragging.h>
value caml_init_NSDragging(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSObject");
   arg2 = caml_wrap_id([NSObject class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("draggingSourceOperationMaskForLocal:");
   arg2 = caml_wrap_pointer(@selector(draggingSourceOperationMaskForLocal:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("namesOfPromisedFilesDroppedAtDestination:");
   arg2 = caml_wrap_pointer(@selector(namesOfPromisedFilesDroppedAtDestination:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("draggedImage:beganAt:");
   arg2 = caml_wrap_pointer(@selector(draggedImage:beganAt:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("draggedImage:endedAt:operation:");
   arg2 = caml_wrap_pointer(@selector(draggedImage:endedAt:operation:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("draggedImage:movedTo:");
   arg2 = caml_wrap_pointer(@selector(draggedImage:movedTo:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("ignoreModifierKeysWhileDragging:");
   arg2 = caml_wrap_pointer(@selector(ignoreModifierKeysWhileDragging ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("draggedImage:endedAt:deposited:");
   arg2 = caml_wrap_pointer(@selector(draggedImage:endedAt:deposited:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("draggingEntered:");
   arg2 = caml_wrap_pointer(@selector(draggingEntered:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("draggingUpdated:");
   arg2 = caml_wrap_pointer(@selector(draggingUpdated:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("draggingExited:");
   arg2 = caml_wrap_pointer(@selector(draggingExited:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("prepareForDragOperation:");
   arg2 = caml_wrap_pointer(@selector(prepareForDragOperation:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("performDragOperation:");
   arg2 = caml_wrap_pointer(@selector(performDragOperation:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("concludeDragOperation:");
   arg2 = caml_wrap_pointer(@selector(concludeDragOperation:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("draggingEnded:");
   arg2 = caml_wrap_pointer(@selector(draggingEnded:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("wantsPeriodicDraggingUpdates:");
   arg2 = caml_wrap_pointer(@selector(wantsPeriodicDraggingUpdates ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}

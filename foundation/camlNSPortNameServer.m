// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#import </System/Library/Frameworks/Foundation.framework/Headers/NSPortNameServer.h>
value caml_init_NSPortNameServer(value unit)
{
   CAMLparam0();
   CAMLlocal2(arg1, arg2);
   value *register_class = caml_named_value("register_class");
   value *register_selector = caml_named_value("register_selector");
   arg1 = caml_copy_string("NSPortNameServer");
   arg2 = caml_wrap_id([NSPortNameServer class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("systemDefaultPortNameServer:");
   arg2 = caml_wrap_pointer(@selector(systemDefaultPortNameServer ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("portForName:");
   arg2 = caml_wrap_pointer(@selector(portForName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("portForName:host:");
   arg2 = caml_wrap_pointer(@selector(portForName:host:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("registerPort:name:");
   arg2 = caml_wrap_pointer(@selector(registerPort:name:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removePortForName:");
   arg2 = caml_wrap_pointer(@selector(removePortForName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSMachBootstrapServer");
   arg2 = caml_wrap_id([NSMachBootstrapServer class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedInstance:");
   arg2 = caml_wrap_pointer(@selector(sharedInstance ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("portForName:");
   arg2 = caml_wrap_pointer(@selector(portForName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("portForName:host:");
   arg2 = caml_wrap_pointer(@selector(portForName:host:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("registerPort:name:");
   arg2 = caml_wrap_pointer(@selector(registerPort:name:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSMessagePortNameServer");
   arg2 = caml_wrap_id([NSMessagePortNameServer class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedInstance:");
   arg2 = caml_wrap_pointer(@selector(sharedInstance ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("portForName:");
   arg2 = caml_wrap_pointer(@selector(portForName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("portForName:host:");
   arg2 = caml_wrap_pointer(@selector(portForName:host:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("NSSocketPortNameServer");
   arg2 = caml_wrap_id([NSSocketPortNameServer class]);
   caml_callback2(*register_class,arg1,arg2);
   arg1 = caml_copy_string("sharedInstance:");
   arg2 = caml_wrap_pointer(@selector(sharedInstance ));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("portForName:");
   arg2 = caml_wrap_pointer(@selector(portForName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("portForName:host:");
   arg2 = caml_wrap_pointer(@selector(portForName:host:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("registerPort:name:");
   arg2 = caml_wrap_pointer(@selector(registerPort:name:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("removePortForName:");
   arg2 = caml_wrap_pointer(@selector(removePortForName:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("portForName:host:nameServerPortNumber:");
   arg2 = caml_wrap_pointer(@selector(portForName:host:nameServerPortNumber:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("registerPort:name:nameServerPortNumber:");
   arg2 = caml_wrap_pointer(@selector(registerPort:name:nameServerPortNumber:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("setDefaultNameServerPortNumber:");
   arg2 = caml_wrap_pointer(@selector(setDefaultNameServerPortNumber:));
   caml_callback2(*register_selector, arg1, arg2);
   arg1 = caml_copy_string("defaultNameServerPortNumber:");
   arg2 = caml_wrap_pointer(@selector(defaultNameServerPortNumber ));
   caml_callback2(*register_selector, arg1, arg2);
   CAMLreturn(Val_int(0));
}

#define CAML_NAME_SPACE
#include <caml/callback.h>
#include <caml/memory.h>

#import <Foundation/NSAutoreleasePool.h>

static NSAutoreleasePool *arp =nil;

value caml_init_default(value unit)
{
  CAMLparam0();
  value *register_selector = caml_named_value("register_selector");

  // This could go elsewhere? Looks like it should be thread based
  if (nil == arp) {
    arp = [[NSAutoreleasePool alloc] init];
  }

  caml_callback2(*register_selector, caml_copy_string("new:"), (value)@selector(new:));
  CAMLreturn(Val_int(0));
}

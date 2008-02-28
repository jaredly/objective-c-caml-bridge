#define CAML_NAME_SPACE
#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>
#include <caml/custom.h>
#include <caml/fail.h>
#include <caml/callback.h>

#include <AppKit/AppKit.h>
/* This doesn't do anything and isn't even called
   We have this so that appkit.cma has a chunk of executable code 
   and thus the linking tools handle -framework AppKit appropriately
   Without this trick, as of 3.09.3, tests/t3 can't be linked as it
   reports Fatal error: exception Not_found 
*/

value caml_init_appkit (value v)
{
  CAMLparam1(v);
  CAMLreturn(Val_int(0));
}


// Local Variables:
// mode: objc
// End:

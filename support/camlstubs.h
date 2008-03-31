#import <Foundation/NSMethodSignature.h>
#import <Foundation/NSDictionary.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSString.h>

#if MAC_OS_X_VERSION_MAX_ALLOWED <= MAC_OS_X_VERSION_10_4
// On MacOS X 10.4 or earlier, +signatureWithObjCTypes: is a SPI
@interface NSMethodSignature (WarningKiller)
+ (id) signatureWithObjCTypes:(const char*)types;
@end
#endif


// Take an ObjC value as an invocation (inv) argument at position (i)
// we copy to a temp buffer, convert to OCaml ffi and put in (taggedval)

#define CVARG(ctype, tag, cvf) {             \
    buffer = malloc(sizeof(ctype));         \
    [inv getArgument:buffer atIndex:i];     \
    taggedval = caml_alloc(1, tag);         \
    ctype a = *(ctype *)buffer;             \
    Store_field(taggedval, 0, cvf);         \
    free(buffer); buffer=0;                 \
    }

#define CANON_NAME(x) \
  ([[NSString alloc] initWithUTF8String: sel_getName(@selector(x))])


// Stubs must implement an initialize method, which will
// set up a static dictionary, and a method to return that
// dictionary.
@protocol OCamlStub
-(NSDictionary *)sigs;
@end

@interface OCamlProxy : NSObject <OCamlStub>
{
  // We can't store the ocaml value here, due to GC constraints. 
  // What we store is an index into a map of values.
  int proxyId;
}
- initWithId:(int)oid;
- (void) forwardInvocation:(NSInvocation *)invocation;
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector;
@end


// Local Variables:
// mode: objc
// End:

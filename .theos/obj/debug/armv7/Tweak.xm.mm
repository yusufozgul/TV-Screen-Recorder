#line 1 "Tweak.xm"

#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class UIScreen; 
static BOOL (*_logos_orig$_ungrouped$UIScreen$isCaptured)(_LOGOS_SELF_TYPE_NORMAL UIScreen* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$UIScreen$isCaptured(_LOGOS_SELF_TYPE_NORMAL UIScreen* _LOGOS_SELF_CONST, SEL); 

#line 1 "Tweak.xm"
BOOL isCaptured;

static BOOL _logos_method$_ungrouped$UIScreen$isCaptured(_LOGOS_SELF_TYPE_NORMAL UIScreen* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
  return false;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIScreen = objc_getClass("UIScreen"); MSHookMessageEx(_logos_class$_ungrouped$UIScreen, @selector(isCaptured), (IMP)&_logos_method$_ungrouped$UIScreen$isCaptured, (IMP*)&_logos_orig$_ungrouped$UIScreen$isCaptured);} }
#line 7 "Tweak.xm"

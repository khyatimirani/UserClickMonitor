#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif


FOUNDATION_EXPORT double UserClickMonitorVersionNumber;
FOUNDATION_EXPORT const unsigned char UserClickMonitorVersionString[];

#import "ClickMonitorHelper.h"
#import "ClickMonitorCPPWrapper.h"

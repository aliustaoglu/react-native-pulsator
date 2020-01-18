#import <Foundation/Foundation.h>
#import "React/RCTViewManager.h"


@interface RCT_EXTERN_MODULE(RNPReactNativePulsator, RCTViewManager)
    RCT_EXPORT_VIEW_PROPERTY(color, NSString)
    RCT_EXPORT_VIEW_PROPERTY(animationDuration, NSNumber)
    RCT_EXPORT_VIEW_PROPERTY(pulseInterval, NSNumber)
    RCT_EXPORT_VIEW_PROPERTY(repeatCount, NSNumber)
    RCT_EXPORT_VIEW_PROPERTY(numPulse, NSNumber)
    RCT_EXPORT_VIEW_PROPERTY(radius, NSNumber)
    RCT_EXPORT_VIEW_PROPERTY(offset, NSDictionary)
    RCT_EXTERN_METHOD(setPulsator:(nonnull BOOL *)isSet resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)

@end

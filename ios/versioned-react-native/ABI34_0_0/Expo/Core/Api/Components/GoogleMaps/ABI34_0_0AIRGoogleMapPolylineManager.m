//
//  ABI34_0_0AIRGoogleMapPolylineManager.m
//
//  Created by Nick Italiano on 10/22/16.
//

#ifdef ABI34_0_0HAVE_GOOGLE_MAPS

#import "ABI34_0_0AIRGoogleMapPolylineManager.h"

#import <ReactABI34_0_0/ABI34_0_0RCTBridge.h>
#import <ReactABI34_0_0/ABI34_0_0RCTConvert.h>
#import <ReactABI34_0_0/ABI34_0_0RCTConvert+CoreLocation.h>
#import <ReactABI34_0_0/ABI34_0_0RCTEventDispatcher.h>
#import <ReactABI34_0_0/ABI34_0_0RCTViewManager.h>
#import <ReactABI34_0_0/UIView+ReactABI34_0_0.h>
#import "ABI34_0_0RCTConvert+AirMap.h"
#import "ABI34_0_0AIRGoogleMapPolyline.h"

@interface ABI34_0_0AIRGoogleMapPolylineManager()

@end

@implementation ABI34_0_0AIRGoogleMapPolylineManager

ABI34_0_0RCT_EXPORT_MODULE()

- (UIView *)view
{
  ABI34_0_0AIRGoogleMapPolyline *polyline = [ABI34_0_0AIRGoogleMapPolyline new];
  polyline.bridge = self.bridge;
  return polyline;
}

ABI34_0_0RCT_EXPORT_VIEW_PROPERTY(coordinates, ABI34_0_0AIRMapCoordinateArray)
ABI34_0_0RCT_EXPORT_VIEW_PROPERTY(fillColor, UIColor)
ABI34_0_0RCT_EXPORT_VIEW_PROPERTY(strokeColor, UIColor)
ABI34_0_0RCT_EXPORT_VIEW_PROPERTY(strokeWidth, double)
ABI34_0_0RCT_EXPORT_VIEW_PROPERTY(lineDashPattern, NSArray)
ABI34_0_0RCT_EXPORT_VIEW_PROPERTY(geodesic, BOOL)
ABI34_0_0RCT_EXPORT_VIEW_PROPERTY(zIndex, int)
ABI34_0_0RCT_EXPORT_VIEW_PROPERTY(tappable, BOOL)
ABI34_0_0RCT_EXPORT_VIEW_PROPERTY(onPress, ABI34_0_0RCTBubblingEventBlock)

@end

#endif

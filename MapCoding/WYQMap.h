//
//  WYQMap.h
//  MapCoding
//
//  Created by 吴英强 on 15/4/29.
//  Copyright (c) 2015年 吴英强. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BaiduMapAPI/BMKMapView.h>

@interface WYQMap : UIViewController<BMKMapViewDelegate>
@property (nonatomic, strong) BMKMapView *mapView;
@end

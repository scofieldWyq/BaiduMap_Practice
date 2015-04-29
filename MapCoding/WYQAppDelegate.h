//
//  WYQAppDelegate.h
//  MapCoding
//
//  Created by 吴英强 on 15/4/29.
//  Copyright (c) 2015年 吴英强. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WYQMap.h"
#import <BaiduMapAPI/BMapKit.h> // refrence all the *.h file of baidu
#import <BaiduMapAPI/BMKMapView.h>

@interface WYQAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) BMKMapManager *mapManager;
@property (nonatomic, strong) WYQMap *mapViewC;
@end

//
//  WYQMap.m
//  MapCoding
//
//  Created by 吴英强 on 15/4/29.
//  Copyright (c) 2015年 吴英强. All rights reserved.
//

#import "WYQMap.h"
#import <BaiduMapAPI/BMKMapView.h>
#import <BaiduMapAPI/BMKLocationService.h>

@interface WYQMap()<BMKLocationServiceDelegate>

@property (nonatomic, strong) BMKLocationService *locService;

@end
@implementation WYQMap

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    self.mapView = [[BMKMapView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [self.mapView setMapType:BMKMapTypeSatellite];
    
    self.view = self.mapView;
    
    [BMKLocationService setLocationDesiredAccuracy:kCLLocationAccuracyNearestTenMeters];
    
    [BMKLocationService setLocationDistanceFilter:100.f];
    
    self.locService = [[BMKLocationService alloc] init];
    self.locService.delegate = self;
    
    [self.locService startUserLocationService];
    
}

- (void)viewWillAppear:(BOOL)animated{
    

    [self.mapView viewWillAppear];
    [self.mapView setDelegate:self];
    
}

- (void)viewWillDisappear:(BOOL)animated{
    
    [self.mapView viewWillDisappear];
    
    self.mapView.delegate = nil;
}

- (void)didUpdateUserHeading:(BMKUserLocation *)userLocation{
    NSLog(@"heading is %@", userLocation);
    
}
- (void)didUpdateBMKUserLocation:(BMKUserLocation *)userLocation{
    
    NSLog(@"didUpdateBMKUserLocation lat %f, long %f", userLocation.location.coordinate.latitude, userLocation.location.coordinate.longitude);
    
}

- (void)didFailToLocateUserWithError:(NSError *)error{
    if( error != nil){
        NSLog(@"location failed: %@", [error localizedDescription]);
    }
    
    NSLog(@"local failed");
}

@end

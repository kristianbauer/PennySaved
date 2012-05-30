//
//  BPLocationManager.h
//  APennySaved
//
//  Created by Kristian Bauer on 5/17/12.
//  Copyright (c) 2012 Bauerkraut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface BPLocationManager : NSObject <CLLocationManagerDelegate> {
	CLLocationManager *locationManager;
	CLLocation *currentLocation;
}

@property (nonatomic, readonly) CLLocation *currentLocation;

+ (BPLocationManager*) singleton;

@end

//
//  BPLocationManager.m
//  APennySaved
//
//  Created by Kristian Bauer on 5/17/12.
//  Copyright (c) 2012 Bauerkraut. All rights reserved.
//

#import "BPLocationManager.h"

@implementation BPLocationManager

static BPLocationManager *sharedSingleton;

@synthesize currentLocation;

+ (BPLocationManager*) singleton {
	if(!sharedSingleton) {
		sharedSingleton = [[BPLocationManager alloc] init];
	}
	return sharedSingleton;
}

- (id) init {
	if((self = [super init])) {
		locationManager = [[CLLocationManager alloc] init];
		locationManager.delegate = self;
		[locationManager startUpdatingLocation];
	}
	return self;
}

#pragma mark CLLocationManagerDelegate
- (void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
	NSLog(@"CLLocationManager didUpdateToLocation: %@", [newLocation description]);
	currentLocation = newLocation;
}

- (void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
	
}

@end

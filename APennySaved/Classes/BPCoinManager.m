//
//  BPCoinManager.m
//  APennySaved
//
//  Created by Kristian Bauer on 5/16/12.
//  Copyright (c) 2012 Bauer Power. All rights reserved.
//

#import "BPCoinManager.h"
#import "BPLocationManager.h"

@implementation BPCoinManager

static BPCoinManager *sharedSingleton;

+ (BPCoinManager*) singleton {
	if(!sharedSingleton) {
		sharedSingleton = [[BPCoinManager alloc] init];
	}
	return sharedSingleton;
}

- (id) init {
	if((self = [super init])) {
		coins = [[NSDictionary alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"coins" ofType:@"plist"]];
		collectedCoins = [NSMutableArray new];
	}
	return self;
}

#pragma mark -
#pragma mark getters
- (NSString*) coinPath {
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	return [documentsDirectory stringByAppendingPathComponent:@"coins.txt"];
}

#pragma mark -
#pragma mark actions
- (void) addCoinWithCurrencyCode:(NSString *)code identifier:(NSString *)identifier {
	// increment total based on value of coin
	NSMutableDictionary *coin = [[coins objectForKey:code] objectForKey:identifier];
	total += [[coin objectForKey:@"value"] floatValue];
	
	// save coin with location data
	BPCoin *newCoin = [[BPCoin alloc] init];
	newCoin.currencyCode = code;
	newCoin.identifier = identifier;
	newCoin.value = [[coin objectForKey:@"value"] floatValue];
	newCoin.coordinates = CGPointMake([BPLocationManager singleton].currentLocation.coordinate.latitude, [BPLocationManager singleton].currentLocation.coordinate.longitude);
	[collectedCoins addObject:newCoin];
}

- (void) saveCoins {
	// write collectedCoins to txt file
	[collectedCoins writeToFile:[self coinPath] atomically:YES];
	NSLog(@"BPCoinManager saveCoins: %@", [collectedCoins description]);
}

- (void) loadCoins {
	// get collectedCoins from txt file
	collectedCoins = [[NSMutableArray alloc] initWithContentsOfFile:[self coinPath]];
	NSLog(@"BPCoinManager loadCoins: %@", [collectedCoins description]);
}

@end

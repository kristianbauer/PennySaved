//
//  BPCoinManager.h
//  APennySaved
//
//  Created by Kristian Bauer on 5/16/12.
//  Copyright (c) 2012 Bauer Power. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BPCoin.h"
#import "BPLocationManager.h"

@interface BPCoinManager : NSObject {
	// all possible coins for all currencies
	NSDictionary *coins;
	// total value of all coins found
	float total;
	// all coins the player has collected
	NSMutableArray *collectedCoins;
}

+ (BPCoinManager*) singleton;
// getters
- (NSString*) coinPath;
// actions
- (void) addCoinWithCurrencyCode:(NSString*)code identifier:(NSString*)identifier;
- (void) saveCoins;
- (void) loadCoins;

@end

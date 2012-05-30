//
//  BPCoin.h
//  APennySaved
//
//  Created by Kristian Bauer on 5/18/12.
//  Copyright (c) 2012 Bauerkraut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface BPCoin : NSObject <NSCoding> {
	// currency code of the coin (USD, AUD, etc.)
	NSString *currencyCode;
	// unique indentifier within the currency code
	NSString *identifier;
	// value of the coin in the coin's currency
	float value;
	// location the coin was found at
	CGPoint coordinates;
}

@property (nonatomic, retain) NSString *currencyCode;
@property (nonatomic, retain) NSString *identifier;
@property (nonatomic, assign) float value;
@property (nonatomic, assign) CGPoint coordinates;

@end

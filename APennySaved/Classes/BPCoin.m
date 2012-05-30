//
//  BPCoin.m
//  APennySaved
//
//  Created by Kristian Bauer on 5/18/12.
//  Copyright (c) 2012 Bauerkraut. All rights reserved.
//

#import "BPCoin.h"

@implementation BPCoin

@synthesize currencyCode, identifier, value, coordinates;

- (id) init {
	if((self = [super init])) {
		currencyCode = @"";
		identifier = @"";
		value = 0.0f;
		coordinates = CGPointMake(0, 0);
	}
	return self;
}

- (id) initWithCoder:(NSCoder *)aDecoder {
	if((self = [super init])) {
		currencyCode = [aDecoder decodeObjectForKey:@"currencyCode"];
		identifier = [aDecoder decodeObjectForKey:@"identifier"];
		value = [aDecoder decodeFloatForKey:@"value"];
		coordinates = [aDecoder decodeCGPointForKey:@"coordinates"];
	}
	return self;
}

- (void) encodeWithCoder:(NSCoder *)aCoder {
	[aCoder encodeObject:currencyCode forKey:@"currencyCode"];
	[aCoder encodeObject:identifier forKey:@"identifier"];
	[aCoder encodeFloat:value forKey:@"value"];
	[aCoder encodeCGPoint:coordinates forKey:@"coordinates"];
}

@end

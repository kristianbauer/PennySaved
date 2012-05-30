//
//  BPFirstViewController.m
//  APennySaved
//
//  Created by Kristian Bauer on 5/16/12.
//  Copyright (c) 2012 Bauer Power. All rights reserved.
//

#import "BPFirstViewController.h"

@interface BPFirstViewController ()

@end

@implementation BPFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
	    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
	} else {
	    return YES;
	}
}

- (IBAction) coinPressed:(id)sender {
	// get sender as UIButton
	UIButton *button = (UIButton*)sender;
	// add coin based on button's tag
	switch (button.tag) {
		case 1:
			[[BPCoinManager singleton] addCoinWithCurrencyCode:@"USD" identifier:@"quarter"];
			break;
		case 2:
			[[BPCoinManager singleton] addCoinWithCurrencyCode:@"USD" identifier:@"dime"];
			break;
		case 3:
			[[BPCoinManager singleton] addCoinWithCurrencyCode:@"USD" identifier:@"nickel"];
			break;
		case 4:
			[[BPCoinManager singleton] addCoinWithCurrencyCode:@"USD" identifier:@"penny"];
			break;
		default:
			break;
	}
}

@end

//
//  BPSecondViewController.m
//  APennySaved
//
//  Created by Kristian Bauer on 5/16/12.
//  Copyright (c) 2012 Bauer Power. All rights reserved.
//

#import "BPSecondViewController.h"

@interface BPSecondViewController ()

@end

@implementation BPSecondViewController

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

@end

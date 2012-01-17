//
//  ViewController.m
//  Reachability
//
//  Created by Dan on 12/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}


-(BOOL) hasInternet{
    Reachability *reach = [Reachability reachabilityWithHostName:@"www.google.com"];
    NetworkStatus internetStats = [reach currentReachabilityStatus];
    
    if (internetStats == NotReachable) {
        UIAlertView *alertOne = [[UIAlertView alloc] initWithTitle:@"Internet" message:@"is DOWN!!!" delegate:self cancelButtonTitle:@"Damnit!!" otherButtonTitles:@"Cancel", nil];
        [alertOne show];
        [alertOne release];
    }
    else {
        UIAlertView *alertTwo = [[UIAlertView alloc] initWithTitle:@"Internet" message:@"is WORKING!!!" delegate:self cancelButtonTitle:@"Cool!!" otherButtonTitles:@"Cancel", nil];
        [alertTwo show];
        [alertTwo release];
    }
    
    return YES;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self hasInternet];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

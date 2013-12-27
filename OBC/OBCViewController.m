//
//  OBCViewController.m
//  OBC
//
//  Created by Moishe Lettvin on 12/26/13.
//  Copyright (c) 2013 Moishe Lettvin. All rights reserved.
//

#import "OBCViewController.h"

@interface OBCViewController ()

@end

@implementation OBCViewController

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

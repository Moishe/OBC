//
//  obcViewController.m
//  Oblique Cooking
//
//  Created by Moishe Lettvin on 4/19/14.
//  Copyright (c) 2014 Lettvin Meltzer. All rights reserved.
//

#import "obcViewController.h"

@interface obcViewController ()

@end

@implementation obcViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    NSString *filePath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"2"] ofType:@"png"];
    UIImage *image = [UIImage imageWithContentsOfFile:filePath];
    imageView.alpha = 0.4;
    CGRect imageFrame = imageView.frame;
    imageFrame.size.height = MIN(self.view.bounds.size.height - 80, imageFrame.size.height);
    imageView.frame = imageFrame;
    imageView.clipsToBounds = YES;
    imageView.image = image;

    CGFloat margin = 25;
    CGRect buttonFrame = credits.frame;
    buttonFrame.origin.y = self.view.bounds.size.height - buttonFrame.size.height - margin;
    credits.frame = buttonFrame;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

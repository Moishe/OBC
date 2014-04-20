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

    NSString *filePath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"vegas"] ofType:@"jpg"];
    UIImage *image = [UIImage imageWithContentsOfFile:filePath];
    imageView.alpha = 0.4;
    imageView.backgroundColor = [UIColor blackColor];
    imageView.clipsToBounds = YES;
    imageView.image = image;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

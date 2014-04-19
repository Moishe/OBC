//
//  obcGMOHViewController.m
//  Oblique Cooking
//
//  Created by Moishe Lettvin on 4/19/14.
//  Copyright (c) 2014 Lettvin Meltzer. All rights reserved.
//

#import "obcGMOHViewController.h"

@interface obcGMOHViewController ()

@end

@implementation obcGMOHViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    labelMealList.textAlignment = NSTextAlignmentCenter;
    labelMealList.lineBreakMode = NSLineBreakByWordWrapping;
    labelMealList.numberOfLines = 0;

    labelDescription.textAlignment = NSTextAlignmentCenter;
    labelDescription.lineBreakMode = NSLineBreakByWordWrapping;
    labelDescription.numberOfLines = 0;
    
    [self showMeal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showMeal
{
    NSArray *mealDescriptions = @[
                            @"Eli Terry takes a long walk through Northbury, Connecticut, naps, invents a clock that can discern the difference between apparent solar time and mean solar time (ephemeris time was not yet clear until 150 years later and so would not have been helpful in this clock), and enjoys a treat. 1793."
                            ];
    
    NSArray *mealLists = @[
                           @"Good bread, raw milk butter, Pape Clement bordeaux."
                           ];
    
    NSUInteger randomIndex = arc4random() % [mealDescriptions count];
    labelDescription.text = [mealDescriptions objectAtIndex:randomIndex];
    labelMealList.text = [mealLists objectAtIndex:randomIndex];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

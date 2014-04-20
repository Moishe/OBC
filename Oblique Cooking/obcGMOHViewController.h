//
//  obcGMOHViewController.h
//  Oblique Cooking
//
//  Created by Moishe Lettvin on 4/19/14.
//  Copyright (c) 2014 Lettvin Meltzer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface obcGMOHViewController : UIViewController {
    UILabel *labelDescription;
    UILabel *labelMealList;
    IBOutlet UILabel *labelDate;
    IBOutlet UIImageView *imageView;
    
    // For debugging
    NSInteger pictureIndex;
    NSInteger mealIndex;
}

- (void)placeLabel:(CGRect *)rect labelText:(NSString *)labelText bottom:(BOOL)bottom;

@property (assign, nonatomic) NSInteger index;

@end

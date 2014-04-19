//
//  obcHYCViewController.h
//  Oblique Cooking
//
//  Created by Moishe Lettvin on 4/19/14.
//  Copyright (c) 2014 Lettvin Meltzer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface obcHYCViewController : UIViewController {
    IBOutlet UILabel *labelConsideration;
    IBOutlet UILabel *labelHaveYouConsidered;
    IBOutlet UIButton *buttonYes;
    IBOutlet UIButton *buttonNo;
}

- (IBAction)yesPressed;
- (IBAction)noPressed;
- (void)fadeIn;
- (void)fadeOut;

@end

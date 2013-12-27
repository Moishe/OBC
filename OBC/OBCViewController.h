//
//  OBCViewController.h
//  OBC
//
//  Created by Moishe Lettvin on 12/26/13.
//  Copyright (c) 2013 Moishe Lettvin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OBCViewController : UIViewController {
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

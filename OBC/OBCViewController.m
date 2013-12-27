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
    labelConsideration.alpha = 0;
   
    [self fadeIn];
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

- (IBAction)yesPressed {
    [self fadeOut];
}

- (IBAction)noPressed {
    [self fadeIn];
}

- (void)fadeOut {
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveEaseIn
                     animations:^{ labelConsideration.alpha = 0;}
                     completion:nil];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveEaseIn
                     animations:^{ labelHaveYouConsidered.alpha = 0;}
                     completion:nil];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveEaseIn
                     animations:^{ buttonYes.alpha = 0;}
                     completion:nil];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveEaseIn
                     animations:^{ buttonNo.alpha = 0;}
                     completion:nil];
}

- (void)fadeIn {
    [self pickStrategy];
    [UIView animateWithDuration:0.2 delay:0.0 options:UIViewAnimationOptionCurveEaseIn
                     animations:^{ labelConsideration.alpha = 1;}
                     completion:nil];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveEaseIn
                     animations:^{ labelHaveYouConsidered.alpha = 1;}
                     completion:nil];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveEaseIn
                     animations:^{ buttonYes.alpha = 1;}
                     completion:nil];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveEaseIn
                     animations:^{ buttonNo.alpha = 1;}
                     completion:nil];
}

- (void)pickStrategy {
    NSArray *strategies = @[
           @"Your breath is now the food.",
           @"Emphasizing differences. .",
           @"Repetition is progress.",
           @"Extravagance.",
           @"Going outside and shutting the door.",
           @"Restating the problems in words as clearly as possible. .",
           @"Moving into a dark, quiet room. .",
           @"Going slowly all the way round the outside.",
           @"Immersion in uselessness. .",
           @"What your closest friend would do?.",
           @"Displaying your talents.",
           @"It's simply a matter of work.",
           @"Not being afraid of things because they are easy to do.",
           @"Emphasizing the flaws. .",
           @"Overtly resisting change.",
           @"Nothingness.",
           @"What mistakes you made last time?.",
           @"Imagine the meal as a set of disconnected events.",
           @"Using your own ideas.",
           @"Making a sudden, destructive, unpredictable action.",
           @"A quiet evening?.",
           @"Defining an area as 'safe' and using it as an anchor.",
           @"Using filters.",
           @"Making an exhaustive list of everything you might do and doing the last thing on that list.",
           @"What mistakes you made last time?.",
           @"abandoning normal instruments.",
           @"asking people to work against their better judgment.",
           @"taking away the elements in order or apparent non-importance.",
           @"the reality of the situation.",
           @"destruction - nothing - the most important thing.",
           @"Would anybody eat it?.",
           @"putting in earplugs.",
           @"just carrying on.",
           @"turning it upside down.",
           @"tidying up.",
           @"being dirty.",
           @"using an unacceptable color.",
           @"giving way to your worst impulse.",
           @"filling every beat with something.",
           @"using fewer notes.",
           @"moving towards the insignificant.",
           @"doing both, when faced with a choice.",
           @"taping your mouth.",
           @"different systems.",
           @"taking a break.",
           @"discarding an axiom.",
           @"removing the items from the tools.",
           @"breathing more deeply.",
           @"abandoing your recipes.",
           @"think of an oak tree.",
           @"accepting advice.",
           @"honoring thy error as a hidden intention.",
           @"the plate is now the music.",
           @"listening to the quiet voice.",
           @"retracing your steps.",
           @"being less critical more often.",
           @"that you are an engineer.",
           @"asking your body.",
           @"getting your neck massaged.",
           @"embracing clichés.",
           @"a short circuit.",
           @"changing nothing and continuing with immaculate consistency.",
           @"keeping the silence.",
           @"a different speed.",
           @"twisting the spine.",
           @"changing roles.",
           @"whether it is finished.",
           @"giving it away.",
           @"cutting a vital connection.",
           @"the impossible.",
           @"using an old idea.",
           @"not stressing one thing more than another.",
           @"an extreme, a comfortable place.",
           @"???????.",
           @"looking closely at the most embarrasing details and amplifying them.",
           @"removing ambiguities and converting to specifics.",
           @"How Mom would do it?.",
           @"Assembling some of the elements in a group and treaing the group.",
           @"Abandoning strictures.",
           @"Exchange.",
           @"consulting other sources - promosing - unpromising.",
           @"reversing courses.",
           @"converting a main element into a supporting element.",
           @"using 'unqualified' people.",
           @"humanizing the map.",
           @"doing something boring.",
           @"disconnecting from desire.",
           @"questioning the heroic approach.",
           @"looking at the order in which you do things.",
           @"trusting in the you of now.",
           @"giving yourself credit.",
           @"washing up.",
           @"getting lost in useless territory.",
           @"the lowest common denominator.",
           @"decoration.",
           @"A fork has many sides.",
           @"Making one at a time. .",
           @"Thinking like a gardener.",
           @"Taking the thing you hate the most and amplifying it."
   ];
    
    NSUInteger randomIndex = arc4random() % [strategies count];
    labelConsideration.text = [strategies objectAtIndex:randomIndex];
}

@end

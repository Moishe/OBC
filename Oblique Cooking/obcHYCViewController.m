//
//  obcHYCViewController.m
//  Oblique Cooking
//
//  Created by Moishe Lettvin on 4/19/14.
//  Copyright (c) 2014 Lettvin Meltzer. All rights reserved.
//

#import "obcHYCViewController.h"

@interface obcHYCViewController ()

@end

@implementation obcHYCViewController

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

	// Do any additional setup after loading the view, typically from a nib.
    labelConsideration.alpha = 0;
    
    [self positionAtBottom:buttonYes];
    [self positionAtBottom:buttonNo];

    [self fadeIn];
}

- (void)positionAtBottom:(UIButton *)button {
    CGFloat margin = 25;
    CGRect buttonFrame = button.frame;
    buttonFrame.origin.y = self.view.bounds.size.height - buttonFrame.size.height - margin;
    button.frame = buttonFrame;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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


- (IBAction)yesPressed {
    [self fadeIn];
}

- (IBAction)noPressed {
    [self fadeOut];
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
                            @"your breath is now the food?",
                            @"emphasizing contradictions?",
                            @"repetition is progress?",
                            @"extravagance?",
                            @"going outside and recreating?",
                            @"restating the problems as clearly as possible?",
                            @"moving into a dark, quiet room?",
                            @"finding an object and moving slowly around it?",
                            @"immersion in uselessness?",
                            @"what your closest friend would do?",
                            @"displaying your talents?",
                            @"it's simply a matter of work?",
                            @"not being afraid of things because they are easy to do?",
                            @"emphasizing the flaws?",
                            @"overtly resisting change?",
                            @"nothingness?",
                            @"what mistakes you made last time?",
                            @"imagining the meal as a set of disconnected events?",
                            @"disciplined self-indulgence?",
                            @"not building a wall but making a brick?",
                            @"using your own ideas?",
                            @"making a sudden, destructive, unpredictable action?",
                            @"a quiet evening?",
                            @"defining an area as 'safe' and using it as an anchor?",
                            @"using filters?",
                            @"making an exhaustive list of everything you might do and doing the third to last thing on that list?",
                            @"abandoning normal tools?",
                            @"asking people to work against their better judgment?",
                            @"taking away the elements in order of apparent non-importance?",
                            @"what would you as a child enjoy?",
                            @"the reality of the situation?",
                            @"destruction - nothing - the most important thing?",
                            @"whether anybody would want it?",
                            @"putting in earplugs?",
                            @"just carrying on?",
                            @"whether the words need changing?",
                            @"simple subtraction?",
                            @"what you are really thinking about just now?",
                            @"turning it upside down?",
                            @"tidying up?",
                            @"the inconsistency principle?",
                            @"being dirty?",
                            @"using an unacceptable color?",
                            @"is something missing?",
                            @"giving way to your worst impulses?",
                            @"filling every vessel with something?",
                            @"using fewer ingredients?",
                            @"moving towards the insignificant?",
                            @"doing both, when faced with a choice?",
                            @"taping your mouth?",
                            @"different systems?",
                            @"honest joy?",
                            @"spectrum analysis?",
                            @"accretion?",
                            @"taking a break?",
                            @"discarding an axiom?",
                            @"removing the items from the tools?",
                            @"cluster analysis?",
                            @"breathing more deeply?",
                            @"abandoning your recipes?",
                            @"thinking of a beautiful oak tree?",
                            @"transitions?",
                            @"accepting advice?",
                            @"honoring thy error as a hidden intention?",
                            @"what the sections are sections of? Imagine an earthworm.",
                            @"the plate is now the music?",
                            @"listening to the quiet voice?",
                            @"retracing your steps?",
                            @"being less critical more often?",
                            @"cascades?",
                            @"you are an engineer?",
                            @"asking your body?",
                            @"it is quite possible (after all)?",
                            @"getting your shoulders massaged?",
                            @"embracing clichés?",
                            @"a short circuit?",
                            @"changing nothing and continuing with immaculate consistency?",
                            @"keeping the silence?",
                            @"bridges –building –burning?",
                            @"organic machinery?", 
                            @"a different speed?",
                            @"twisting the spine?",
                            @"changing roles?",
                            @"whether it is finished?",
                            @"giving it away?", 
                            @"the echoes of ghosts?",
                            @"cutting a vital connection?",
                            @"the impossible?",
                            @"using an old idea?", 
                            @"the center of a very small object?", 
                            @"the most important thing is the thing most easily forgotten?", 
                            @"what you wouldn't do?",
                            @"not stressing one thing more than another?",
                            @"an extreme, a comfortable place?",
                            @"traveling from nothing to more than nothing?",
                            @"suppression?",
                            @"looking closely at the most embarrassing details and amplifying them?",
                            @"removing ambiguities and converting to specifics?",
                            @"only a part, not the whole?",
                            @"distorting time?",
                            @"how Mom would do it?",
                            @"assembling some of the elements in a group and treating the group?",
                            @"abandoning strictures?",
                            @"exchange?",
                            @"consulting other sources - promising - unpromising?",
                            @"reversing courses?",
                            @"converting a main element into a supporting element?",
                            @"using unqualified people?",
                            @"humanizing the map?",
                            @"doing something boring?",
                            @"disconnecting from desire?",
                            @"questioning the heroic approach?",
                            @"looking at the order in which you do things?",
                            @"trusting in the you of now?",
                            @"giving yourself credit?",
                            @"washing up?",
                            @"getting lost in useless territory?",
                            @"the lowest common denominator?",
                            @"decoration?",
                            @"a fork has many sides?",
                            @"infinitesimal gradations?",
                            @"making one at a time?",
                            @"thinking like a gardener?",
                            @"taking the thing you hate the most and amplifying it?",
                            @"boiling, boiling, boiling?", 
                            @"shimmering?",
                            @"polyhedra?",
                            @"translucence?",
                            @"hydrocolloids?",
                            @"burning it?",
                            @"a synthetic device?",
                            @"certain triumph?",
                            @"situational positioning?", 
                            @"retreat while avoiding blame?",
                            @"a treasure for the organization?",
                            @"conflict in the self?",
                            @"your opponent's vulnerabilities?",
                            @"an unknown location?",
                            @"taking advantage of scarcity?",
                            @"depletion of wealth?",
                            @"preparing a great meal of history?",
                            @"art as a flexible system?",
                            @"encouraging conflict among resources?",
                            @"an unusual shelter?",
                            @"reconceiving reality?",
                            @"shifting perspective?",
                            @"excavation?",
                            @"your act as craft?"
                            ];
    
    NSUInteger randomIndex = arc4random() % [strategies count];
    labelConsideration.text = [strategies objectAtIndex:randomIndex];
}

@end

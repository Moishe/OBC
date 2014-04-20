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
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"arctic"] ofType:@"jpg"];
    UIImage *image = [UIImage imageWithContentsOfFile:filePath];
    imageView.alpha = 0.4;
    imageView.backgroundColor = [UIColor blackColor];
    imageView.clipsToBounds = YES;
    imageView.image = image;
    
    [self showMeal];
}

- (void)refresh:(UIRefreshControl *)refreshControl {
    [refreshControl endRefreshing];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showMeal
{
    NSArray *mealDescriptions = @[
                                  @"Eli Terry takes a long walk through Northbury, Connecticut, naps, invents a clock that can discern the difference between apparent solar time and mean solar time (ephemeris time was not yet clear until 150 years later and so would not have been helpful in this clock), and enjoys a treat.",
                                  @"Buffet lunch, as enjoyed by Paul Morphy, during the third and most acrimonious day at the American Chess Organization's First American Chess Congress.",
                                  @"Supper immediately following First Lt. James Burton Pond's successful defense of Fort Blair against the two-column guerrilla force of William Clarke Quantrill's Raiders. Baxter Springs, Kansas.",
                                  @"Items from the bar menu in an unnamed Wrigelyville dinner purchased by “Billy Goat” Sianis after he bought a seat for his goat for Game 4 of the World Series, was forcibly escorted out, whereupon he cast a goat curse on the Chicago Cubs, which is rumored to last through the present.",
                                  @"Cocktail hour on the beach in Loreto, Mexico, after considering the many possible and plausible interpretations of the Third Movement of Dmitri Shostakvovich's String Quartet no. 6 in G major, and coming to the conclusion that there may be no hidden significance behind it, only beauty.",
                                  @"Pilot and cosmonaut Yuri Gagarin's first meal in his Volstok spacecraft (and for any human in outer space), having foraged for edibles before his flight.",
                                  @"Camp dinner buffet, Harrison, ME, after holding Joan Benoit Samuelson's gold medal for her surprising and heroic win of the women's marathon event at the 1984 Olympics and discovering it was heavy and real.",
                                  @"Crispus returns from the ocean triumphant, vital energies restored.",
                                  @"Family dinner, hosted by Albert Ghiorso, after the team discovered Fermium while studying the radioactive debris produced by the detonation of Ivy Mike. Berkeley, California.",
                                  @"The tenth (and mysteriously pivotal) birthday of balloonist/adventurer/gentleman David Hempleman-Adams. Ouarzazate, MA.",
                                  @"Eleanor Roosevelt's third and most special secret date dinner with her girlfriend, in the English style garden of their mutual friend, Dr. Muriel Lindencraft.",
                                  @"When Mom had to work late, Father took the opportunity to make all of the orange food that was available. Seattle, WA.",
                                  @"Snacks shortly after experimenting with marijuana for the first time. Lake City, WA.",
                                  @"Mid-morning coffee with Emmanouíl Phokás and Ioánnis Phokás before the latter set out on his journey across the high seas in search of the Northwest Passage for the Spanish Crown. Cefalonia, Greece.",
                                  @"Supper at Walter de Maria's The Lightning Field, on the occasion of Eric's 35th birthday and, generally, a complicated and barely understood desire to be a part of something big. Unknown parts of New Mexico.",
                                  @"Dinner on the occasion of Kate's 33rd birthday, where each guest was honored and toasted, and the menu was letterpressed printed in the Stern type. Seattle, WA.",
                                  @"Cocktail hour immediately following the first and almost successful attempt at making sushi rice with the appropriate ingredients in the traditional manner. Portland, OR.",
                                  @"Late lunch on the pier in Old Orchard Beach, ME, after spending the good part of a day hunting for tourmaline gemstones in the Bennett Quarry in Oxford County.",
                                  @"Street treat immediately following the uplifting experience of discovering the Hall of Geology, Gems, and Minerals, with its sharp edges and irrational colorings, which itself followed the bizarre and discomforting regularity of the passionless stone known as the Hope Diamond. Washington, DC.",
                                  @"Dinner at the Cookhouse, which I actually thought was about food but turns out to be about people and dreams, where I met someone who would become a pivotal person in my life, though I didn't know that at the time. Vashon, WA.",
                                  @"Anne Hutchinson and Roger Williams's Sunday brunch immediately prior to Mrs. Hutchinson's expulsion from the Massachusetts Bay Colony for “blasphemy,” which at that time meant openly challenging male-dominated religious and political hierarchies. Boston, MA.",
                                  @"First cold drinks following the trail run across the Haleakala Crater, which for some reason was done without water or snacks, and featured several moments when curling up under a rock and napping, despite the intense heat, seemed like a terrific idea. Maui, HI.",
                                  @"Late night meal after finding a cassette tape of Sun Ra's 1979 masterpiece Strange Celestial Road, which featured the beautiful and amoebic movements of “Say,” at a now-shuttered used record store. Cleveland, OH.",
                                  @"The seemingly normal dinner party where Samantha's boyfriend, whom we had never met, described a visionary experience that shaped his identity and was, regardless of its truth, an outstanding act of personal mythology. Brooklyn, NY. ",
                                  @"In a suite at the Grand Hyatt, an emergency and experimental hangover remedy after a night of excess that ended up leading to ten straight hours of movie-watching in bed and, eventually, real and measurable self-growth and personal development. Chicago, IL.",
                                  @"Lunch, enjoying Clementine's confident poise when we were, for the first time, handed warm towels and poured tea. Cleveland, OH.",
                                  @"A 95° day where a failed attempt at visiting a popular izakaya for lunch turns into a surprising and perhaps metaphysical omakase inside a sports bar, ending only because of an early flight. Honolulu, HI.",
                                  @"Fulfillment of a dare to eat raw oysters, which were quite large and, having never done so before despite saying that I had and taking the concept of oyster shooter as one might take a shot of brown drink, I was not aware could or ought to be chewed. Hamma Hamma, WA.",
                                  @"On the beach, small fire. Bahía Concepción, Baja California Sur.",
                                  @"Rolling the I Ching from a workbook, listening to Sun Ships on vinyl, examining extremities. Olympia, WA.",
                                  @"Early (new) family Sunday dinner, which involved a long walk to the farmer's market and was the first time I ever had to place any faith in my shellfish abilities. Olympia, WA.",
                                  @"The surprisingly good Italian place that used ancient dumbwaiters to great effect, where opera singers emerged within the candlelight, where we kissed on the street, where I fell in love with you instantly, and where the sense of possibility in the world was endless. London, UK.",
                                  @"Where the restaurant had a maritime name that neither of us can ever remember, but it was near the beach and it was beautiful and we ate outside and they were happy to do it gluten free. Barcelona, ES.",
                                  @"After trying to harvest garnet on the shores of Lake Couer d'Alene, where I wondered what the hell I was doing there. Harrison, ID.",
                                  @"Late lunch at the now-closed but personally groundbreaking Lemongrass Restaurant, which as far as I can tell was Ohio's first Thai restaurant and put together combinations of color and flavors that I was not aware could exist in the world. Cleveland, OH.",
                                  @"The first meal enjoyed by Opperhoofd Jan, after a canal was dug through a tiny peninsula in the Bay of Nagasaki, creating an exclusionary but highly efficient foreign trading point during the Edo Period. Dejima Dutch Trading Post, Japan.",
                                  @"Dinner after the intoxicating power of pursuit gave way to a sparkling and warm intimacy. Olympia, WA.",
                                  @"Someone brought over a whole tuna and we had to figure out how to dress and cook it. Olympia, WA.",
                                  @"Toru Okadu's kitchen, with telephone, and an FM broadcast of the overture to Rossini’s The Thieving Magpie.",
                                  @"Day after Thanksgiving, chemicals exchanged, island recovery dreams. Vashon, WA.",
                                  @"Dinner celebrating my parents' first visit, where they mysteriously wrapped a lamb with gold ribbon and carefully placed neon green candles on the table.",
                                  @"Dinner for a soon to be very famous chef's book launch, which happened to take place in a restaurant that was essentially a proxy for a dive bar, where the chef told us that he didn't really know what to say when he went around to greet people at their tables but he was told that he had to do it and so we toasted him and wished him well. Seattle, WA.",
                                  @"A bacchanalia for food lovers and weirdos organized on a Gurdjieffian camp where cooking on a fire was the only rule. Somewhere near Arlington, WA.",
                                  @"Late lunch at the rental house, where I probably should've kept the lease, when I had enough courage to change directions from implicit to explicit. Portland, OR.",
                                  @"At the counter of the restaurant neither of us could afford, learning about food before it became the new “rock” and the PR armies came in and ruined a decent possibility of positive social change, and you ate meat again for the first time in years. Seattle, WA.",
                                  @"Dinner on the front porch around dusk, after ambitious ideas and equipment failures. Portland, OR.",
                                  @"Trying to find the bathroom, which was located downstairs and made intentionally obscure, after the kitchen comped us a bottle of ice wine. New York, NY.",
                                  @"Serendipity near the beach at the Port of Barcelona, maritime somethings, possibilities; turns out that the restaurant sits in a building that used to reproduce Columbus's caravels. Barcelona, ES.",
                                  @"Second lunch, where I learned that the point of the apple orchard was in no way to have apples to eat out of the hand. Tekovska Breznica, SK.",
                                  @"Birthday, when the bread shined gold. Barcelona, ES.",
                                  @"Feast after climbing Cooper Spur and then accidentally crashing a wine distributor's party, where I met many interesting people, even some in character. Lyle, WA.",
                                  @"Happy hour dinner immediately following work, where you taught me how to play Yahtzee and let me beat you at Connect Four and, although I didn't realize it at the time, it was a real and honest expression of love. Seattle, WA.",
                                  @"Late lunch after escaping from Poznan and its peculiar service and rearrangement of systems, at a curious bar that understood how space is the place. Berlin, DE.",
                                  @"New Year's Eve dinner, where you arrived with a new pair of sheets, flowers, and real champagne, even though it was only our second date. Seattle, WA.",
                                  @"Wedding feast, where I assumed a bizarre but not altogether inappropriate position as the patriarch and individually greeted and toasted all 300 people in attendance. Kaohsiung, TW.",
                                  @"Picnic lunch in 4 courses, excluding some fruit I forgot was in the bag, sunbathing at the glacier. Mt. Hood, OR.",
                                  @"Early lunch with Ruth at the department store near the river, which was elegant and thoughtful. Portsmouth, OH.",
                                  @"Breakfast after several feral days searching for some kind of identity in the Great Smokies, where the waitstaff took pity on us. Gatlinburg, TN.",
                                  @"Dinner at the diner we've now driven by so many times I can't tell if we've actually eaten there, but I think we did once and it was good because they made milkshakes to order. Western PA.",
                                  @"Dinner where I learned that cooking well is a key superpower. Portland, OR.",
                                  @"Lunch, after ordering from a vending machine, and trying to squeeze into the tiny stools, with loud jazz playing on a turntable in the corner. Tokyo, JP.",
                                  @"Dinner celebrating the strange circumstances that led to graduation from airship school and the eventual fulfillment of 500 hours of blimp piloting through the troposphere, all while mending a broken heart. Long Beach, CA.",
                                  @"A sort of high tea ceremony, making our imaginations visible through the print shop of Witte Corneliszoon de With.",
                                  @"Refreshments, intentional and gathered, after a wilderness escapade that appeared to be relatively safe but almost left us gored by what was most certainly an angry bull. Mojave, CA.",
                                  @"The only food left to eat in the minivan upon our return from an all night journey out to the lava, where our ignorance in the face of grave danger allowed us to feel creation. Hawaii, HI.",
                                  @"Third date dinner in a frigid studio apartment with peeling paint and questionable wiring, but also some rare 45's and a Harvey Probber loveseat. Denton, TX.",
                                  @"Dinner at home, where we discovered that while we were not meant for each other, we did have cats with the same name. Seattle, WA.",
                                  @"Petiscos at a hip but not too hip for patrons wearing yoga-related t-shirts (and I mean that in the best possible way) restaurant, where we watched a man send back three bottles of wine to the sommelier just because he loved wine in his heart. Lisbon, Portugal.",
                                  @"Trail snacks on the way to the top of the volcano, which we would have never done if we had known how really hard it was. Cougar, WA.",
                                  @"Makeup off, strip mall, trash talk. Seattle, WA.",
                                  @"Surprise dinner on a surprise business trip at a restaurant that had a tree growing right through the middle, where I learned the strange geography of the Canary Islands and how to resolve a crush. Venice, CA.",
                                  @"Breakfast, after a warm morning paddle with bottlenose dolphins, a spiritual communion with Man of War birds, a quick bribe of muffins paid to the Army who had come to visit by helicopter, and a debate over which Velvet Underground cassette to play. Isla de Carmen, Baja California Sur.",
                                  @"Late night dinner, where we discovered how far we would go to avoid loneliness. Portland, OR.",
                                  @"After spending the day plowing potato fields with visions of a pulp fiction future, Philo Farnsworth sat down for supper. Rigby, ID.",
                                  @"Cocktail hour high up in the Sierras, after getting the minivan stuck in the snow in a geographically impressive manner, which lead directly to the discovery of the snow's prime suitability as cocktail ice. Near Porterville, CA.",
                                  @"Accidental and surprise dinner with my crush of many years, whose mere attention was a precious gemstone, even though I had to take cold medicine just to keep it together, at a restaurant so well put together that after the meal was over, a large cart was wheeled over and we were asked to select homemade versions of famous American candies to take home, and it ended later that night with a kiss, the only one we ever had. San Francisco, CA.",
                                  @"Takeout festival, after a long and bewitching day searching for the camera obscura with one serious and nearly somnambulant impairment. San Francisco, CA.",
                                  @"Backyard dinner, where I felt how different definitions of success can impair or enrich lives. Washington, DC.",
                                  @"Brunch where the lines between fruits were obscured, but the relationship between all things deepened. Near Sarlat, FR.",
                                  @"Lunch up high after accidentally falling down a cliff, with the serendipitous benefit of prospecting into a beautiful vein of aquamarine. Near Mt. Antero, CO.",
                                  @"Snacks immediately following the second sighting of the mountain lion, which was perfectly adapted to consume us but thankfully did not do so. Near Redding, CA.",
                                  @"Almuerza, with bowler hat, fresh-fringed tulips, and a highly verbal and newly fugitive Eclectus parrot named Erastus. Bonesteel, SD.",
                                  @"Lunch, where we conceived a powerful and probably important large scale art installation and nearly built it to completion even though we were deep in the forest without any particularly useful tools. Caribou-Targhee National Forest, WY.",
                                  @"Drinks where the bartender felt she was destined for a greatness that extended far beyond the walls of the palapa, which may or may not be deserved, though people with humor and drive can truly move far/do great things. Ligao, PH.",
                                  @"Breakfast on the rooftop of the brick building where you rented a studio, which was notably not earthquake safe but did provoke a conversation about trust that might not have been possible otherwise. San Leandro, CA.",
                                  @"Dinner after emerging from a brief tunnel and openly wondering about the position of the subject within his/her space. Copenhagen, DK.",
                                  @"Snacks following an interesting exercise where the activity was supposed to be harvesting edible seaweeds, but quickly became conceptualizing three-dimensional space. Florence, OR.",
                                  @"An unmarked ramen house in the middle of an alley in the middle of the summer in the wrong country. Outer Beijing, CN.",
                                  @"Lunch immediately following a dialogue with a train attendant that began as an altercation that nearly left us stranded in the Czech hinterlands, but ended up as an opportunity to share perspectives about and over beer. Bad Schandau, DE.",
                                  @"Blankets, abandoned blueberry farm, bumblebees. Olympia, WA.",
                                  @"In room petit fours, skyscraper swimming pool, greyscale. Hong Kong, HK.",
                                  @"Douglas fir, grey textiles, a light drizzle. Banff, AB.",
                                  @"A young photojournalist, prior to the age of digital, prepares a bouquet of wildflowers picked from his backyard, places them into a blue jar, grabs his overcoat, walks 7.5 blocks to the south, and knocks on the door. Belleville, FR.",
                                  @"Tracing a jagged circle in the rocks with a piece of driftwood ill-suited for the task, giving seabirds made up names. Cape Blanco, OR.",
                                  @"Camping next to the horse field, in full view of the Milky Way. Harrison, ME.",
                                  @"In the bleachers at a minor league baseball stadium, despite the game's limited attendance and general admission policy. Old Orchard Beach, ME.",
                                  @"On a beautiful yawl with a now forgotten but almost certainly Scandinavian name and a charming crew of handsome young men, touring on top of the birth waters. Camden, ME.",
                                  @"An off the grid farm, bordered on all sides by the national park and surrounded in all dimensions by mosquitoes. Bar Harbor, ME.",
                                  @"Coming from the Outside to the Inside in a few brief minutes, just by properly pronouncing key words and ordering the right things correctly. Belgrade Lakes, ME.",
                                  @"An uncompromising dedication to memory, which resulted in a vision and drive few were prepared to follow. San Francisco, CA.",
                                  @"Dinner before I said goodbye to path I wasn't supposed to be on, particularly when it was so humid. New Orleans, LA.",
                                  @"Snacks on the curb at the Horse Market after a brief rain, preparing to break in a new jacket and look for a reliable guide. Prague, CZ.",
                                  @"Family dinner in the stunning and thoughtful cobb house, right next to the dirt basketball court and the sea. Cortes Island, BC.", 
                                  @"A goodbye party meant to honor the end of an era, which turned out to be a slightly more mystical iteration of the same era, but a great party nonetheless. Seattle, WA.",
                                  @"Breakfast/dinner inside of an amazing Korean restaurant that was inside of a nondescript office building in Manhattan, where the proprietor said he would not consider serving any salads before 2pm. New York, NY.", 
                                  @"Metal, candlelight, BYOB, and a surprising level of camaraderie from the chefs. Chicago, IL.", 
                                  @"Dinner and a show in a smoky room with bizarrely formal table service, where the artist said hello only at the encore, although that could just be his style. Seattle, WA.", 
                                  @"Improvised beach dinner, shortly after coming across and standing very still near a large herd of elk, at a superior camp. Gold Beach, CA.",
                                  @"Onboard a gulet in the Sea of Marmara, staring at the past. Outer Istanbul, TR.",
                                  @"Happy hour where we screentested for the reality television adventure show, which likely did not choose us because we had joie de vivre and the actual skills for the job. Lakewood, WA.",
                                  @"Dessert near the sea, a new friend, serendipity. Rovinj, HR.",
                                  @"On the outside patio of a brutalist hotel with surprising inclinations toward thoughtful, almost tender customer service. Zagreb, HR.", 
                                  @"Formal lunch service after an unexpected upgrade to the first class car, trying to incorporate my vision of Quixote into the landscape, which didn't really work but still felt like a necessary exercise. Madrid to Barcelona, ES.", 
                                  @"Church buffet in an American Legion lodge in the part of Western Pennsylvania that nearly everyone forgot about. Nanty Glo, PA.",
                                  @"Dinner feast, partially prepared in advance but finished over a campfire of wet wood and newspaper that was lit primarily by hope and luck, on the remains of an old lumber mill on the Oregon Trail. Outside Dufur, OR.",
                                  @"Happy hour upon return to the vehicle, after dodging snakes and trying to stuff all of the world's mahogany obisidian into our pockets. Far outside of Burns, OR.",
                                  @"Even though it had to happen at chain restaurant, which I never would have picked, I had been dreaming about it for 10 weeks and the power of a dream is strong. Tucson, AZ.",
                                  @"An unexpected dinner in a private club, where a Friday night might be filled with recreational hockey and curling and sushi buffets. Vancouver, BC.",
                                  @"Dinner next door to the restaurant we tried to make it into, where, at least, the proprietor made my mother's day by kissing her full on the lips. Vancouver, BC.",
                                  @"Oh, but the dessert! Vancouver, BC.",
                                  @"Our first fancy dinner on our own, exploring the rewards and consequences of choice. Seattle, WA.",
                                  @"An unlocked door leading to an unusual landscape. Faial Island (Azores), PT. ",
                                  @"The manuscript hints at the possibilities.",
                                  @"The melody is strong and centered, but the dissonance reveals a jungle surrounding us."];
    
    NSArray *dates = @[@"1793",
                       @"1857",
                       @"1863",
                       @"1945",
                       @"2004",
                       @"1961",
                       @"1985",
                       @"2000",
                       @"1952",
                       @"1966",
                       @"1937",
                       @"1994",
                       @"1992",
                       @"1587",
                       @"2012",
                       @"2010",
                       @"2014",
                       @"1983",
                       @"1985",
                       @"2010",
                       @"1637",
                       @"2009",
                       @"1993",
                       @"2006",
                       @"2010",
                       @"1993",
                       @"2010",
                       @"1998",
                       @"2000",
                       @"2000",
                       @"1998",
                       @"2008",
                       @"2007",
                       @"1998",
                       @"1994",
                       @"1641",
                       @"1999",
                       @"1998",
                       @"1998",
                       @"2004",
                       @"1991",
                       @"2009",
                       @"2008",
                       @"2007",
                       @"2008",
                       @"2012",
                       @"2008",
                       @"2007",
                       @"2007",
                       @"2007",
                       @"2012",
                       @"2002",
                       @"2008",
                       @"2001",
                       @"2013",
                       @"2013",
                       @"1984",
                       @"1995",
                       @"1990s",
                       @"2006",
                       @"2013",
                       @"2007",
                       @"1642",
                       @"2012",
                       @"2007",
                       @"1999",
                       @"2010",
                       @"2007",
                       @"2006",
                       @"2010",
                       @"2011",
                       @"2000",
                       @"2011",
                       @"1919",
                       @"2012",
                       @"2010",
                       @"2008",
                       @"2008",
                       @"2007",
                       @"1996",
                       @"2006",
                       @"2014",
                       @"2003",
                       @"2003",
                       @"2001",
                       @"1998",
                       @"2005",
                       @"2005",
                       @"2000",
                       @"1998",
                       @"2005",
                       @"2008",
                       @"1989",
                       @"1997",
                       @"1987",
                       @"1986",
                       @"2004",
                       @"2004",
                       @"2011",
                       @"2008",
                       @"2003",
                       @"2002",
                       @"1999",
                       @"2010",
                       @"2012",
                       @"2010",
                       @"2000",
                       @"2005",
                       @"2004",
                       @"2008",
                       @"2007",
                       @"2007",
                       @"2007",
                       @"2006",
                       @"2013",
                       @"2013",
                       @"2000",
                       @"2010",
                       @"2009",
                       @"2011",
                       @"1998",
                       @"2007",
                       @"1994",
                       @"2014"];
    
    NSArray *mealLists = @[
                           @"Good bread, raw milk butter, Pape Clement bordeaux."
                           ];
    
    NSUInteger randomIndex = arc4random() % [mealDescriptions count];
    
    CGRect labelFrame = CGRectMake(25, 109, 280, 140);
    UILabel *myLabel = [[UILabel alloc] initWithFrame:labelFrame];
    
    NSString *labelText = [mealDescriptions objectAtIndex:randomIndex];
    [myLabel setText:labelText];
    
    // Tell the label to use an unlimited number of lines
    myLabel.textAlignment = UITextAlignmentCenter;
    [myLabel setNumberOfLines:0];
    [myLabel sizeToFit];
    
    CGRect myFrame = myLabel.frame;
    myFrame = CGRectMake(myFrame.origin.x, myFrame.origin.y, 280, myFrame.size.height);
    myLabel.frame = myFrame;
    
    [self.view addSubview:myLabel];
    
    labelDate.text = [dates objectAtIndex:randomIndex];
    labelMealList.text = [mealLists objectAtIndex:0];
    CGSize fontSize = [labelMealList.text sizeWithFont:labelMealList.font];
    double finalHeight = fontSize.height * labelMealList.numberOfLines;
    double finalWidth = labelMealList.frame.size.width;    //expected width of label
    CGSize theStringSize = [labelMealList.text sizeWithFont:labelMealList.font constrainedToSize:CGSizeMake(finalWidth, finalHeight) lineBreakMode:labelMealList.lineBreakMode];
    int newLinesToPad = (finalHeight  - theStringSize.height) / fontSize.height;
    for(int i=0; i<newLinesToPad; i++)
        labelMealList.text = [NSString stringWithFormat:@" \n%@", labelMealList.text];}

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

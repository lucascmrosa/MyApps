//
//  LRViewController.h
//  Man's Best Friend
//
//  Created by Dinf AEB on 04/09/14.
//
//

#import <UIKit/UIKit.h>

@interface LRViewController : UIViewController

-(void) printHelloWorld;
-(void)printsEveryNumberBetweenItandOne: (int) initialNumber;
-(int)fatorial: (int) value;
- (IBAction)newDogBarButtonPress:(UIBarButtonItem *)sender;

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;

@end

//
//  LRViewController.h
//  Age of Laika
//
//  Created by Dinf AEB on 27/08/14.
//
//

#import <UIKit/UIKit.h>

@interface LRViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *laikaTextLabel;
@property (strong, nonatomic) IBOutlet UITextField *laikaTextField;
@property (strong, nonatomic) IBOutlet UILabel *realYearsLabel;
- (IBAction)laikaConvert:(UIButton *)sender;
- (IBAction)convertRealDogButton:(UIButton *)sender;

@end

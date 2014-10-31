//
//  LRViewController.h
//  MyFirstApplication
//
//  Created by Dinf AEB on 25/08/14.
//
//

#import <UIKit/UIKit.h>

@interface LRViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)buttonPressed:(UIButton *)sender;

@end

//
//  LRViewController.m
//  Age of Laika
//
//  Created by Dinf AEB on 27/08/14.
//
//

#import "LRViewController.h"

@interface LRViewController ()

@end

@implementation LRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)laikaConvert:(UIButton *)sender
{
    int normalAge = [self.laikaTextField.text intValue];
    int laikaAge = normalAge * 7;
    self.laikaTextLabel.text = [NSString stringWithFormat:@"%i",laikaAge];
    [self.laikaTextField resignFirstResponder];
}

- (IBAction)convertRealDogButton:(UIButton *)sender
{
    int normalAge = [self.laikaTextField.text intValue];
    int dogYears;
    if (normalAge > 2)
    {
        dogYears = (10.5 *2) + ((normalAge -2)*4);
    }
    else
    {
        dogYears = 10.5 * normalAge;
    }
    self.realYearsLabel.text = [NSString stringWithFormat:@"%i",dogYears];
    [self.laikaTextField resignFirstResponder];
}
@end

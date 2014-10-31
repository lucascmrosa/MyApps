//
//  ViewController.m
//  Prep For Pirate Assignment
//
//  Created by Dinf AEB on 06/10/14.
//  Copyright (c) 2014 Dinf AEB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *firstString = @"First String";
    NSString *secondString = @"Second String";
    
    NSMutableArray *myMutableArray = [[NSMutableArray alloc] init];
    
    [myMutableArray addObject:firstString];
    [myMutableArray addObject:secondString];
    NSArray *myArray = [[NSArray alloc] initWithObjects:firstString, myMutableArray,secondString, nil];
    
    NSLog(@"%@",myArray);

    [self.myButton setTitle:@"Button Pressed" forState:UIControlStateNormal];
    self.myButton.hidden = NO;
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert!" message:@"vc acionou o alerta" delegate:nil cancelButtonTitle:@"Calcel" otherButtonTitles:nil, nil];
    
    [alertView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

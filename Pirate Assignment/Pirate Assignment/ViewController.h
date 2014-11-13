//
//  ViewController.h
//  Pirate Assignment
//
//  Created by Dinf AEB on 31/10/14.
//  Copyright (c) 2014 Dinf AEB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Character.h"
#import "Boss.h"

@interface ViewController : UIViewController

//iVars
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) Character *character;
@property (strong, nonatomic) Boss *boss;

//IBOutlets
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property (strong, nonatomic) IBOutlet UILabel *labelVida;
@property (strong, nonatomic) IBOutlet UILabel *labelDano;
@property (strong, nonatomic) IBOutlet UILabel *labelArma;
@property (strong, nonatomic) IBOutlet UILabel *labelRoupa;


@property (strong, nonatomic) IBOutlet UILabel *labelHistoria;


@property (strong, nonatomic) IBOutlet UIButton *buttonAcao;
@property (strong, nonatomic) IBOutlet UIButton *buttonNorth;
@property (strong, nonatomic) IBOutlet UIButton *buttonEast;
@property (strong, nonatomic) IBOutlet UIButton *buttonWest;
@property (strong, nonatomic) IBOutlet UIButton *buttonSouth;



//IBAction
- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)resetButtonPressed:(id)sender;




@end


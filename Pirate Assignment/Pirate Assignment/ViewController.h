//
//  ViewController.h
//  Pirate Assignment
//
//  Created by Dinf AEB on 31/10/14.
//  Copyright (c) 2014 Dinf AEB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//IBOutlets
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property (strong, nonatomic) IBOutlet UILabel *labelVida;
@property (strong, nonatomic) IBOutlet UILabel *labelDano;
@property (strong, nonatomic) IBOutlet UILabel *labelArma;
@property (strong, nonatomic) IBOutlet UILabel *labelRoupa;


@property (strong, nonatomic) IBOutlet UILabel *labelHistoria;


@property (strong, nonatomic) IBOutlet UIButton *buttonAcao;
@property (strong, nonatomic) IBOutlet UIButton *buttonNorte;
@property (strong, nonatomic) IBOutlet UIButton *buttonOeste;
@property (strong, nonatomic) IBOutlet UIButton *buttonSul;
@property (strong, nonatomic) IBOutlet UIButton *buttonLeste;

//IBAction
- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;




@end


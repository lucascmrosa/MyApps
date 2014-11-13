//
//  ViewController.m
//  Pirate Assignment
//
//  Created by Dinf AEB on 31/10/14.
//  Copyright (c) 2014 Dinf AEB. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"
#import "Tile.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Factory *factory = [[Factory alloc] init];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.currentPoint = CGPointMake(0, 0);
    self.boss = [factory boss];
    [self updateCharacterStatsForArmor:nil wihWeapons:nil withHealthEffect:0];
    [self updateTile];
    [self updateButtons];
    
}

- (void)updateTile
{
    Tile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.labelHistoria.text = tileModel.story;
    self.backgroundImageView.image = tileModel.backgroundImage;
    
    self.labelVida.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.labelDano.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.labelRoupa.text = self.character.armor.name;
    self.labelArma.text = self.character.weapon.name;
    
    [self.buttonAcao setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
    
}

-(void)updateButtons
{
    self.buttonWest.hidden = [self titleExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.buttonEast.hidden = [self titleExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.buttonNorth.hidden = [self titleExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.buttonSouth.hidden = [self titleExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
}

- (BOOL)titleExistsAtPoint: (CGPoint)point
{
    //NSLog(@"param: %f %f",point.x, point.y);
    if (point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x]count])
    {
        //NSLog(@"local: %f %f",self.currentPoint.x, self.currentPoint.y);
        return NO;
    }
    else {
        return YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)acaoButtonPressed:(id)sender {
    
}
- (IBAction)actionButtonPressed:(UIButton *)sender {
    Tile *tile = [[self.tiles objectAtIndex:self.currentPoint.x]objectAtIndex:self.currentPoint.y];
    if (tile.healthEffect == -15) {
        self.boss.health = self.boss.health - self.character.damage;
    }
    [self updateCharacterStatsForArmor:tile.armor wihWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    if (self.character.health <= 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death" message:@"vc morreu" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [alertView show];
    }
    else if (self.boss.health <= 0){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"vitoria" message:@"vc derrotou o chefao" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [alertView show];
    }
    [self updateTile];
    
}

- (IBAction)northButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)southButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)resetButtonPressed:(id)sender {
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
}

-(void)updateCharacterStatsForArmor:(Armor *)armor wihWeapons:(Weapon *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil) {
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    }
    else if (weapon != nil) {
        self.character.damage =self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect != 0){
        self.character.health = self.character.health + healthEffect;
    }
    else{
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}
@end

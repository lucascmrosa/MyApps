//
//  Tile.h
//  Pirate Assignment
//
//  Created by Dinf AEB on 31/10/14.
//  Copyright (c) 2014 Dinf AEB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Character.h"
@interface Tile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) Weapon *weapon;
@property (strong, nonatomic) Armor *armor;
@property (nonatomic) int healthEffect;



@end

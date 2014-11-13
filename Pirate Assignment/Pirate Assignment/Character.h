//
//  Character.h
//  Pirate Assignment
//
//  Created by Dinf AEB on 11/11/14.
//  Copyright (c) 2014 Dinf AEB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Armor.h"
#import "Weapon.h"


@interface Character : NSObject

@property (strong, nonatomic) Armor *armor;
@property (strong, nonatomic) Weapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end

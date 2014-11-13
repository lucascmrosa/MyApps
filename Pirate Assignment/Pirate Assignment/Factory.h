//
//  Factory.h
//  Pirate Assignment
//
//  Created by Dinf AEB on 31/10/14.
//  Copyright (c) 2014 Dinf AEB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tile.h"
#import "Character.h"
#import "Boss.h"

@interface Factory : NSObject

-(NSArray *)tiles;
-(Character *)character;
-(Boss *)boss;
@end

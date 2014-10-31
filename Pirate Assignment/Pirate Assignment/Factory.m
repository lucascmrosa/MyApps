//
//  Factory.m
//  Pirate Assignment
//
//  Created by Dinf AEB on 31/10/14.
//  Copyright (c) 2014 Dinf AEB. All rights reserved.
//

#import "Factory.h"

@implementation Factory

-(NSArray *)tiles;
{
    Tile *tile1 = [[Tile alloc] init];
    tile1.story = @"story1";

    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"story2";
    
    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"story3";
    
    NSMutableArray *primeiraColuna = [[NSMutableArray alloc] init];
    [primeiraColuna addObject:tile1];
    [primeiraColuna addObject:tile2];
    [primeiraColuna addObject:tile3];
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"story4";
    
    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"story5";
    
    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"story6";
    
    NSMutableArray *segundaColuna = [[NSMutableArray alloc] init];
    [segundaColuna addObject:tile4];
    [segundaColuna addObject:tile5];
    [segundaColuna addObject:tile6];
    
    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"story7";
    
    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"story8";
    
    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"story9";
    
    NSMutableArray *terceiraColuna = [[NSMutableArray alloc] init];
    [terceiraColuna addObject:tile7];
    [terceiraColuna addObject:tile8];
    [terceiraColuna addObject:tile9];
    
    Tile *tile10 = [[Tile alloc] init];
    tile10.story = @"story10";
    
    Tile *tile11 = [[Tile alloc] init];
    tile11.story = @"story11";
    
    Tile *tile12 = [[Tile alloc] init];
    tile12.story = @"story12";
    
    NSMutableArray *quartaColuna = [[NSMutableArray alloc] init];
    [quartaColuna addObject:tile10];
    [quartaColuna addObject:tile11];
    [quartaColuna addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:primeiraColuna, segundaColuna, terceiraColuna, quartaColuna, nil];
    
    return tiles;
    
}

@end

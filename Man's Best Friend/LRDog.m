//
//  LRDog.m
//  Man's Best Friend
//
//  Created by Dinf AEB on 04/09/14.
//
//

#import "LRDog.h"

@implementation LRDog
//Late uma vez
-(void)bark
{
    NSLog(@"Woof Woof!");
}
//Late uma quantidade de vezes
-(void)barkANumberOfTimes: (int) numberOfTimes
{
    for (int bark = 1; bark <= numberOfTimes; bark++) {
        // NSLog(@"Woof Woof!");
        [self bark];
    }
}
//Altera a raça para warewolf
-(void)changeBreedToWarewolf
{
    self.breed = @"Warewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud) {
        for (int bark = 1; bark <= numberOfTimes; bark ++) {
            NSLog(@"Yip yip!");
        }
    }
    else{
        for (int bark = 1; bark <= numberOfTimes; bark++) {
            NSLog(@"WOOF WOOF!");
        }
    }
}

-(int)ageInDogYeasFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}
@end

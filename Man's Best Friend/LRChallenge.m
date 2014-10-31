//
//  LRChallenge.m
//  Man's Best Friend
//
//  Created by Dinf AEB on 09/09/14.
//
//

#import "LRChallenge.h"

@implementation LRChallenge

-(void)printsEveryNumberBetweenItandOne: (int) initialNumber
{
    for (int cont = initialNumber; cont >= 1; cont--) {
        NSLog(@"%i",cont);
    }
}

@end

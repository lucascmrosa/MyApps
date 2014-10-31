//
//  LRDog.h
//  Man's Best Friend
//
//  Created by Dinf AEB on 04/09/14.
//
//

#import <Foundation/Foundation.h>

@interface LRDog : NSObject

@property (nonatomic)   int age;
@property (nonatomic, strong) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes: (int) numberOfTimes;
-(void)changeBreedToWarewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;

-(int)ageInDogYeasFromAge:(int)regularAge;

@end

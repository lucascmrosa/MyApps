//
//  LRViewController.m
//  Class Testing Ground
//
//  Created by Dinf AEB on 12/09/14.
//
//

#import "LRViewController.h"

@interface LRViewController ()

@end

@implementation LRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *myString = @"The new found land dog vreed has webbed feet which aids in its swimming prowess";
    
    NSArray *wordsInSentence = [myString componentsSeparatedByString:@" "];
    NSLog(@"%@",wordsInSentence);
    NSMutableArray *capitalizedWords = [[NSMutableArray alloc] init];
//    for (int word = 0; word < [wordsInSentence count]; word ++) {
//        NSString *uncapitalizedWord = [wordsInSentence objectAtIndex:word];
//        NSString *capitalizedWord = [uncapitalizedWord capitalizedString];
//        [capitalizedWords addObject:capitalizedWord];
//    }
//    NSLog(@"%@",capitalizedWords);
    
    for (NSString *word in wordsInSentence) {
        NSString *capitalizedWord = [word capitalizedString];
        [capitalizedWords addObject:capitalizedWord];
    }
    NSLog(@"%@", capitalizedWords);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  LRViewController.m
//  Man's Best Friend
//
//  Created by Dinf AEB on 04/09/14.
//
//

#import "LRViewController.h"
#import "LRDog.h"
#import "LRPuppy.h"

@interface LRViewController ()

@end

@implementation LRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //Criado o objeto
    LRDog *myDog = [[LRDog alloc] init];
    myDog.name = @"Quack";
    myDog.breed = @"Not a Dog";
    myDog.age = 1;
    myDog.image = [UIImage imageNamed:@"pato.jpg"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    LRDog *secondDog = [[LRDog alloc] init];
    secondDog.name = @"Wish";
    secondDog.breed = @"Jack";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    LRDog *thirdDog = [[LRDog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    LRDog *fourthDog = [[LRDog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
//    NSLog(@"%@", self.myDogs);
    
    self.currentIndex = 0;
    
    LRPuppy *littlePuppy = [[LRPuppy alloc] init];
    [littlePuppy givePuppyEyes];
    // Puppy extends dog então consegue usar os metodos do dog porem o dog nao usa os metodos do puppy
    [littlePuppy bark];
//    //Print do objeto
//    NSLog(@"My dog is named %@ and its age is %i and the breed is %@", myDog.name, myDog.age, myDog.breed);
//    //Metodo Latir normal
//    [myDog bark]; //Woof Woof!
//    //Metodo Latir com Parametro de quantidade
//    [myDog barkANumberOfTimes:7]; //7*Woof Woof!
//    //Imprime a raça
//    NSLog(@"%@", myDog.breed);
//    //Chama o metodo que altera a raça
//    [myDog changeBreedToWarewolf];
//    //Imprime a raça
//    NSLog(@"%@", myDog.breed);
//    //Chama o metedo hello world
//    [self printHelloWorld];
//    //Chama metodo de latir X vezes alto ou nao
//    [myDog barkANumberOfTimes:5 loudly:NO];
//    [myDog barkANumberOfTimes:5 loudly:YES];
//    //Recebe o retorno de um metodo e printa
//    int dogYears = [myDog ageInDogYeasFromAge:myDog.age];
//    NSLog(@"%i",dogYears);
//    
//    [self printsEveryNumberBetweenItandOne:7];
//    
//    NSLog(@"%i",[self fatorial:3]);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void) printHelloWorld
//{
//    NSLog(@"Hello World");
//}
//     
//-(void)printsEveryNumberBetweenItandOne: (int) initialNumber
//{
//    for (int cont = initialNumber; cont >= 1; cont--)
//    {
//        NSLog(@"%i",cont);
//    }
//}
//
//-(int)fatorial: (int) value
//{
//    
//    for (int cont = value - 1; cont >= 1; cont --)
//    {
//        value = value * cont;
//    }
//    
//    return value;
//}
//
//- (IBAction)newDogBarButtonPress:(UIBarButtonItem *)sender
//{
//    int numberOfDogs = [self.myDogs count];
//    int randomIndex = arc4random() % numberOfDogs;
//    if (randomIndex == self.currentIndex && self.currentIndex == 0) {
//        randomIndex ++;
//    }
//    else if(self.currentIndex == randomIndex){
//        randomIndex --;
//    }
//    LRDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
//    self.currentIndex = randomIndex;
////    self.myImageView.image = randomDog.image;
////    self.breedLabel.text = randomDog.breed;
////    self.nameLabel.text = randomDog.name;
//    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
//        self.myImageView.image = randomDog.image;
//        self.breedLabel.text = randomDog.breed;
//        self.nameLabel.text = randomDog.name;
//    } completion:^(BOOL finished) {
//        
//    }];
//    sender.title = @"And Another";
//}

@end

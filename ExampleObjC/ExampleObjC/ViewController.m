//
//  ViewController.m
//  ExampleObjC
//
//  Created by Игорь Пенкин on 25.03.2021.
//

#import "ViewController.h"
#import "Bird.h"
#import "Flock.h"

@interface ViewController ()

@property (nonatomic) Flock * flock;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.flock = [[Flock alloc] initWithName:@"MyFlock"];
    
    Bird *sparrow = [[Bird alloc] initWithType:@"Sparrow" areal:@"mid-east" color:UIColor.brownColor weight:0.065];
    Bird *eagle = [[Bird alloc] initWithType:@"Eagle" areal:@"central" color:UIColor.brownColor weight:4.54];
    Bird *parrot = [[Bird alloc] initWithType:@"Parrot" areal:@"south" color:UIColor.yellowColor weight:0.12];
    
    [self.flock addBirdsObject:sparrow];
    [self.flock addBirdsObject:eagle];
    [self.flock addBirdsObject:parrot];
    
    [self.flock popBirdsObject];
    [self.flock popBirdsObject];
    
    [self.flock release];
}

@end

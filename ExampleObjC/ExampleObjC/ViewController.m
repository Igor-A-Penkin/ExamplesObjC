//
//  ViewController.m
//  ExampleObjC
//
//  Created by Игорь Пенкин on 25.03.2021.
//

#import "ViewController.h"
#import "Faculty.h"
#import "Student.h"

@interface ViewController ()

@property (strong, nonatomic) Faculty * faculty;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.faculty = [[Faculty alloc] initWithCount:10];
    for (Student *student in self.faculty.students) {
        NSLog(@"%@", [student description]);
    }
}


@end

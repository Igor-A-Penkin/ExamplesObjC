//
//  ViewController.m
//  ExampleObjC
//
//  Created by Игорь Пенкин on 25.03.2021.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self fileWorking];
    //[self saveArrayAsPropertyList];
    //[self manageStudent];
    //[self tryCatch];
    [self runtimeExample];
}

- (void)fileWorking {
    NSString *string = @"Hello, world!";
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"\nString: %@;\nData: %@", string, data);
    
    NSMutableString *mutableString = [NSMutableString stringWithString:@"Hello!"];
    NSMutableData *mutableData = [mutableString dataUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"\nOld String: %@;\nMutable Data: %@", mutableString, mutableData);
    
    mutableString = [NSMutableString stringWithString:@"Hello, everyone!"];
    mutableData = [mutableString dataUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"\nNew String: %@;\nData: %@", mutableString, mutableData);
}

- (void)saveArrayAsPropertyList {
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *filename = @"numbers.plist";
    path = [path stringByAppendingFormat:@"/%@", filename];
    NSLog(@"\nPath: %@", path);
    
    NSArray *numbers = [NSArray arrayWithObjects:@1, @2, @3, @4, @5, nil];
    [numbers writeToFile:path atomically:YES];
    NSLog(@"Numbers: %@", numbers);
    
    NSArray *gotNumbers = [NSArray arrayWithContentsOfFile:path];
    NSLog(@"Got numbers: %@", gotNumbers);
}

- (void)manageStudent {
    Student *myStudent = [Student new];
    [myStudent setFirstname:@"Johnny"];
    [myStudent setLastname:@"Appleseed"];
    [myStudent writeStudentToFile];
    NSLog(@"MY : %@ %@", myStudent.firstname, myStudent.lastname);
    
    Student *herStudent = [myStudent readStudent];
    NSLog(@"HER : %@ %@", herStudent.firstname, herStudent.lastname);
}

- (void)tryCatch {
    id except = nil;
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:@"value", @"key", nil];
    Student *student;
    
    @try {
        student = [Student new];
        [student writeStudentToFile];
    } @catch (NSException *exception) {
        except = exception;
        @throw;
    } @finally {
        student = nil;
    }
}

- (void)runtimeExample {
    Student *student = [Student new];
    student.firstname = @"Johnny";
    student.lastname = @"Appleseed";
    NSLog(@"Student: %@", student);
}

@end

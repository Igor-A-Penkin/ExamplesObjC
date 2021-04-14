//
//  Faculty.m
//  ExampleObjC
//
//  Created by developer on 14.04.2021.
//

#import "Faculty.h"
#import "Student.h"

@implementation Faculty

- (instancetype)initWithCount:(NSInteger)count {
    self = [super init];
    if (self) {
        self.students = [self fulfillForCount:count];
    }
    NSLog(@"TOTAL: %lu", (unsigned long)self.students.count);
    return self;
}

-(NSMutableArray *)fulfillForCount:(NSInteger)count {
    NSMutableArray *students = [NSMutableArray new];
    for (int i = 0; i < count; i++) {
        Student *student = [[Student alloc] initWithAge:18
                                                   name:@"Name"
                                                surname:@"Surname"];
        [students addObject:student];
    }
    return students;
}

@end

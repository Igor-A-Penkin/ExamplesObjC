//
//  Student.m
//  ExampleObjC
//
//  Created by developer on 14.04.2021.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithAge:(NSInteger)age name:(NSString *)name surname:(NSString *)surname {
    self = [super init];
    if (self) {
        self.name = name;
        self.surname = surname;
        self.age = age;
    }
    return  self;
}

- (NSString *)fullname {
    return [NSString stringWithFormat:@"%@ %@", self.name, self.surname];
}

- (void)setAge:(NSInteger)age {
    _age = age;
}

- (void)increaseAge {
    _age+=1;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Student: %@, %li y.o.", self.fullname, (long)self.age];
}

@end

//
//  Flock.m
//  ExampleObjC
//
//  Created by developer on 15.04.2021.
//

#import "Flock.h"

@implementation Flock

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        self.name = name;
        [self.name autorelease];
        self.birds = [NSMutableArray array];
        [self.birds autorelease];
    }
    NSLog(@"%@ was initiated.", self.name);
    return self;
}

- (void)addBirdsObject:(Bird *)object {
    [self.birds addObject:object];
    NSLog(@"%@ was added. Totally: %lu birds.", object.type, (unsigned long)self.birds.count);
}

- (void)popBirdsObject {
    [self.birds removeLastObject];
    NSLog(@"One bird was popped. Totally: %lu birds.", (unsigned long)self.birds.count);
}

- (void)dealloc
{
    NSLog(@"Flock %@ is to be deallocated.", self.name);
    [super dealloc];
}

@end

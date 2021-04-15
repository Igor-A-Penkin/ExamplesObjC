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
        [name retain];
        [name release];
        self.name = name;
        self.birds = [NSMutableArray new];
    }
    NSLog(@"%@ was initiated.", self.name);
    return self;
}

- (void)addBirdsObject:(Bird *)object {
    [object retain];
    [object release];
    [self.birds addObject:object];
    [[self.birds lastObject] release];
    NSLog(@"%@ was added. Totally: %lu birds.", object.type, (unsigned long)self.birds.count);
}

- (void)popBirdsObject {
    [self.birds removeLastObject];
    NSLog(@"One bird was popped. Totally: %lu birds.", (unsigned long)self.birds.count);
}

- (void)dealloc
{
    for (Bird *bird in self.birds) {
        [bird release];
    }
    [self.name release];
    [self.birds release];
    
    NSLog(@"Flock %@ is to be deallocated.", self.name);
    [super dealloc];
}

@end

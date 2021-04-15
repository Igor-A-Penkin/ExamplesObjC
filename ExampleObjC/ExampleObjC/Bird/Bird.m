//
//  Bird.m
//  ExampleObjC
//
//  Created by developer on 15.04.2021.
//

#import "Bird.h"

@implementation Bird

- (instancetype)initWithType:(NSString *)type
                       areal:(NSString *)areal
                       color:(UIColor *)color
                      weight:(CGFloat)weight
{
    self = [super init];
    if (self) {
        [type retain];
        [areal retain];
        [color retain];
        [type release];
        [areal release];
        [color release];
        self.type = type;
        self.areal = areal;
        self.color = color;
        self.weight = weight;
    }
    NSLog(@"Bird %@ was initiated.", self.type);
    return self;
}

- (void)dealloc
{
    NSLog(@"Bird %@ was deallocated.", self.type);
    [self.type release];
    [self.areal release];
    [self.color release];
    [super dealloc];
}

@end

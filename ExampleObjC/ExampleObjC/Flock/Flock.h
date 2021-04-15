//
//  Flock.h
//  ExampleObjC
//
//  Created by developer on 15.04.2021.
//

#import <Foundation/Foundation.h>
#import "Bird.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSMutableArray * birds;

- (instancetype)initWithName:(NSString *)name;
- (void)addBirdsObject:(Bird *)object;
- (void)popBirdsObject;


@end

NS_ASSUME_NONNULL_END

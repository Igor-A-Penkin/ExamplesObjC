//
//  Student.h
//  ExampleObjC
//
//  Created by developer on 14.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, readonly) NSInteger age;
@property (strong, nonatomic) NSString * name;
@property (strong, nonatomic) NSString * surname;
@property (strong, nonatomic, readonly) NSString * fullname;

- (instancetype)initWithAge:(NSInteger)age name:(NSString *)name surname:(NSString *)surname;
- (void)increaseAge;
- (NSString *)description;

@end

NS_ASSUME_NONNULL_END

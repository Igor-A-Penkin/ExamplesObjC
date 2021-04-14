//
//  Faculty.h
//  ExampleObjC
//
//  Created by developer on 14.04.2021.
//

#import <Foundation/Foundation.h>
#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

@interface Faculty : NSObject

@property (strong, nonatomic) NSMutableArray<Student *> *students;

- (instancetype)initWithCount:(NSInteger)count;

@end

NS_ASSUME_NONNULL_END

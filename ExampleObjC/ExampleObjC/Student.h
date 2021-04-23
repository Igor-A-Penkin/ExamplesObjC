//
//  Student.h
//  ExampleObjC
//
//  Created by developer on 23.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject <NSCoding, NSSecureCoding>

@property (nonatomic, strong) NSString *firstname;
@property (nonatomic, strong) NSString *lastname;

- (instancetype)initWithCoder:(NSCoder *)coder;
- (Student *)readStudent;
- (void)writeStudentToFile;

@end

NS_ASSUME_NONNULL_END

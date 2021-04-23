//
//  Student.m
//  ExampleObjC
//
//  Created by developer on 23.04.2021.
//

#import "Student.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation Student

+ (BOOL)supportsSecureCoding {
    return YES;
}

NSString *directory() {
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *filename = @"students.txt";
    path = [path stringByAppendingFormat:@"/%@", filename];
    //NSLog(@"\nPath for student: %@", path);
    return path;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        self.firstname = [coder decodeObjectOfClass:[NSString class] forKey:@"firstname"];
        self.lastname = [coder decodeObjectOfClass:[NSString class] forKey:@"lastname"];
    }
    return self;
}

- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    [coder encodeObject:self.firstname forKey:@"firstname"];
    [coder encodeObject:self.lastname forKey:@"lastname"];
}

- (void)writeStudentToFile {
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:NO error:nil];
    NSLog(@"Written data: %@", data.description);
    [data writeToFile:directory() atomically:YES];
    NSLog(@"Student saved.");
}

- (Student *)readStudent {
    NSData *data = [NSData dataWithContentsOfFile:directory()];
    NSLog(@"Read data: %@", data.description);
    return [NSKeyedUnarchiver unarchivedObjectOfClass:self.class fromData:data error:nil];
}

- (NSString *)description {
    NSMutableDictionary *values = [NSMutableDictionary new];
    unsigned int count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    
    for (int i = 0; i < count; i++) {
        objc_property_t property = properties[i];
        const char *name = property_getName(property);
        const char *attributes = property_getAttributes(property);
        if (attributes[1] == '@') {
            NSString *selector = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
            SEL sel = sel_registerName([selector UTF8String]);
            NSObject *value = objc_msgSend(self, sel);
            values[selector] = value.description;
        }
    }
    free(properties);
    return [NSString stringWithFormat:@"%@: %@", self.class, values];
}

@end

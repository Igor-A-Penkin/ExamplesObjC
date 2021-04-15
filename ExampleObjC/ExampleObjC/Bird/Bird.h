//
//  Bird.h
//  ExampleObjC
//
//  Created by developer on 15.04.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

@property (nonatomic, strong) NSString * type;
@property (nonatomic, strong) NSString * areal;
@property (nonatomic, strong) UIColor * color;
@property (nonatomic) CGFloat weight;

- (instancetype)initWithType:(NSString *)type
                       areal:(NSString *)areal
                       color:(UIColor *)color
                      weight:(CGFloat)weight;

@end

NS_ASSUME_NONNULL_END

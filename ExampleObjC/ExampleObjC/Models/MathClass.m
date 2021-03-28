//
//  MathClass.m
//  ExampleObjC
//
//  Created by Игорь Пенкин on 28.03.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MathClass: NSObject
- (CGFloat)maxOf:(CGFloat)a andValue:(CGFloat)b;
- (CGFloat)square:(CGFloat)a;
- (CGFloat)sumOf:(CGFloat)a andValue:(CGFloat)b;
- (CGFloat)subtructFrom:(CGFloat)a andValue:(CGFloat)b;
- (CGFloat)divide:(CGFloat)a by:(CGFloat)b;
- (CGFloat)multiply:(CGFloat)a by:(CGFloat)b;
- (NSInteger)remainderOf:(NSInteger)a dividedBy:(NSInteger)b;
- (CGFloat)averageOf:(CGFloat)a andValue:(CGFloat)b andValue:(CGFloat)c;
@end

@implementation MathClass

- (CGFloat)maxOf:(CGFloat)a andValue:(CGFloat)b
{
   if (a > b) {
       return a;
   } else {
       return  b;
   }
}

- (CGFloat)square:(CGFloat)a
{
    return a*a;
}

- (CGFloat)sumOf:(CGFloat)a andValue:(CGFloat)b
{
    return a+b;
}

- (CGFloat)subtructFrom:(CGFloat)a andValue:(CGFloat)b
{
    return a-b;
}

- (CGFloat)divide:(CGFloat)a by:(CGFloat)b
{
    if (b!=0) {
        return a/b;
    } else {
        return CGFLOAT_MAX;
    }
}

- (CGFloat)multiply:(CGFloat)a by:(CGFloat)b
{
    return a*b;
}

- (NSInteger)remainderOf:(NSInteger)a dividedBy:(NSInteger)b
{
    return a%b;
}

- (CGFloat)averageOf:(CGFloat)a andValue:(CGFloat)b andValue:(CGFloat)c
{
    return (a+b+c)/3;
}

@end

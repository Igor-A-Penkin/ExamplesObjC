//
//  MathClass.m
//  ExamplesObjC
//
//  Created by Игорь Пенкин on 20.03.2021.
//

#import <Foundation/Foundation.h>
#import "MathClass.h"

@implementation MathClass

- (CGFloat)maxOf:(CGFloat)a and:(CGFloat)b
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

- (CGFloat)sumOf:(CGFloat)a and:(CGFloat)b
{
    return a+b;
}

- (CGFloat)subtructFrom:(CGFloat)a value:(CGFloat)b
{
    return a-b;
}

- (CGFloat)divide:(CGFloat)a by:(CGFloat)b
{
    return a/b;
}

- (CGFloat)multiply:(CGFloat)a by:(CGFloat)b
{
    return a*b;
}

- (NSInteger)remainderOf:(NSInteger)a dividedBy:(NSInteger)b
{
    return a%b;
}

- (CGFloat)averageOf:(CGFloat)a and:(CGFloat)b and:(CGFloat)c
{
    return (a+b+c)/3;
}

@end

//
//  MathClass.h
//  ExampleObjC
//
//  Created by Игорь Пенкин on 28.03.2021.
//

#import <UIKit/UIKit.h>

#ifndef MathClass_h
#define MathClass_h

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

#endif /* MathClass_h */

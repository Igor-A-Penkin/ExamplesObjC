//
//  MathClass.h
//  ExamplesObjC
//
//  Created by Игорь Пенкин on 20.03.2021.
//

#ifndef MathClass_h
#define MathClass_h

@interface MathClass: NSObject
- (CGFloat)maxOf:(CGFloat)a and:(CGFloat)b;
- (CGFloat)square:(CGFloat)a;
- (CGFloat)sumOf:(CGFloat)a and:(CGFloat)b;
- (CGFloat)subtructFrom:(CGFloat)a value:(CGFloat)b;
- (CGFloat)divide:(CGFloat)a by:(CGFloat)b;
- (CGFloat)multiply:(CGFloat)a by:(CGFloat)b;
- (NSInteger)remainderOf:(NSInteger)a dividedBy:(NSInteger)b;
- (CGFloat)averageOf:(CGFloat)a and:(CGFloat)b and:(CGFloat)c;
@end

#endif /* MathClass_h */

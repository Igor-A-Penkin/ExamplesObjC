//
//  ViewFitter.h
//  ExampleObjC
//
//  Created by Игорь Пенкин on 25.03.2021.
//

#ifndef ViewFitter_h
#define ViewFitter_h

@interface ViewFitter : NSObject

@property (nonatomic) ViewController *VC;
@property (nonatomic, readonly) CGFloat edge;
@property (nonatomic, readonly) CGFloat offset;
@property (nonatomic, readonly) CGFloat row;
@property (nonatomic, readonly) CGFloat buttonsInRow;
@property (nonatomic, readonly) CGFloat buttonsWidth;
@property (nonatomic, readonly) UIFont *buttonsFont;

-(void)fitSubviewsFor:(ViewController *)VC;

@end

#endif /* ViewFitter_h */

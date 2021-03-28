//
//  ViewFitter.m
//  ExampleObjC
//
//  Created by Игорь Пенкин on 25.03.2021.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import <UIKit/UIKit.h>

@interface ViewFitter : NSObject

@property (weak, nonatomic) UIView *homeView;
-(void)setHomeView:(UIView *)homeView;

@end


@implementation ViewFitter

-(void)setHomeView:(UIView *)homeView {
    self.homeView = homeView;
}

-(void)fit:(UISegmentedControl *)modeSwitcher {
    // TO DO
}

-(void)fitInputField:(UITextField *)inputField {
    // TO DO
}

-(void)fitModeSwitcher:(UISegmentedControl *)modeSwitcher {
    // TO DO
}

-(void)fitCheckButton:(UIButton *)checkButton {
    // TO DO
}

-(void)fitClearButton:(UIButton *)clearButton {
    // TO DO
}

-(void)fitZeroButton:(UIButton *)zeroButton {
    // TO DO
}

-(void)fitEqualButton:(UIButton *)equalButton {
    // TO DO
}

-(void)fitDivideButton:(UIButton *)divideButton {
    // TO DO
}

-(void)fitMultiplyButton:(UIButton *)multiplyButton {
    // TO DO
}

-(void)fitMinusButton:(UIButton *)minusButton {
    // TO DO
}

-(void)fitPlusButton:(UIButton *)plusButton {
    // TO DO
}

-(void)fitOneButton:(UIButton *)oneButton {
    // TO DO
}

-(void)fitTwoButton:(UIButton *)twoButton {
    // TO DO
}

-(void)fitThreeButton:(UIButton *)threeButton {
    // TO DO
}

-(void)fitFourButton:(UIButton *)fourButton {
    // TO DO
}

-(void)fitFiveButton:(UIButton *)fiveButton {
    // TO DO
}

-(void)fitSixButton:(UIButton *)sixButton {
    // TO DO
}

-(void)fitSevenButton:(UIButton *)sevenButton {
    // TO DO
}

-(void)fitEightButton:(UIButton *)eightButton {
    // TO DO
}

-(void)fitNineButton:(UIButton *)nineButton {
    // TO DO
}

@end

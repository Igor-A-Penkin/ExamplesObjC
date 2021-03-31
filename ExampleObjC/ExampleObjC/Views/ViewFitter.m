//
//  ViewFitter.m
//  ExampleObjC
//
//  Created by Игорь Пенкин on 25.03.2021.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import <UIKit/UIKit.h>
#import "ViewFitter.h"


@implementation ViewFitter

-(void)fitSubviewsFor:(ViewController *)VC {
    _VC = VC;
    _edge = 16;
    _offset = 5;
    _row = 20;
    _buttonsInRow = 4;
    _buttonsWidth = (_VC.view.frame.size.width-_edge*2-_offset*(_buttonsInRow-1))/_buttonsInRow;
    _buttonsFont = [UIFont fontWithName:@"Helvetica" size:48];
    [self fitModeSwitcher];
    [self fitInputField];
    [self fitSevenButton];
    [self fitEightButton];
    [self fitNineButton];
    [self fitPlusButton];
    [self fitFourButton];
    [self fitFiveButton];
    [self fitSixButton];
    [self fitMinusButton];
    [self fitOneButton];
    [self fitTwoButton];
    [self fitThreeButton];
    [self fitMultiplyButton];
    [self fitClearButton];
    [self fitZeroButton];
    [self fitEqualButton];
    [self fitDivideButton];
    [self fitCheckButton];
}

-(void)fitModeSwitcher {
    CGFloat width = 220;
    CGFloat height = 40;
    CGFloat x = _VC.view.center.x - width/2;
    CGFloat y = _VC.view.frame.origin.y + height;
    [_VC.modeSwitcher setFrame:CGRectMake(x, y, width, height)];
    _VC.modeSwitcher.backgroundColor = UIColor.systemGray4Color;
    _VC.modeSwitcher.selectedSegmentTintColor = UIColor.orangeColor;
}

-(void)fitInputField {
    CGFloat width = _VC.view.frame.size.width - _edge*2;
    CGFloat height = _buttonsWidth*1.5;
    CGFloat x = _VC.view.center.x - width/2;
    CGFloat y = _VC.modeSwitcher.frame.origin.y + _VC.modeSwitcher.frame.size.height + _row;
    [_VC.inputField setFrame:CGRectMake(x, y, width, height)];
    [_VC.inputField setBackgroundColor:UIColor.systemBackgroundColor];
    [_VC.inputField setTintColor:UIColor.orangeColor];
    [_VC.inputField setFont:_buttonsFont];
}

-(void)fitCheckButton {
    CGFloat width = 220;
    CGFloat height = _buttonsWidth;
    CGFloat x = _VC.view.center.x - width/2;
    CGFloat y = _VC.inputField.frame.origin.y + _VC.inputField.frame.size.height + _buttonsWidth;
    [_VC.checkButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.checkButton setBackgroundColor:UIColor.orangeColor];
    [_VC.checkButton setTintColor:UIColor.whiteColor];
    [_VC.checkButton.layer setCornerRadius:_edge];
    [_VC.checkButton.titleLabel setFont:_buttonsFont];
    [_VC.checkButton.titleLabel setText:@"Check"];
}

-(void)fitSevenButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.view.frame.origin.x + _edge;
    CGFloat y = _VC.inputField.frame.origin.y + _VC.inputField.frame.size.height + _row;
    [_VC.sevenButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.sevenButton setBackgroundColor:UIColor.orangeColor];
    [_VC.sevenButton setTintColor:UIColor.whiteColor];
    [_VC.sevenButton.layer setCornerRadius:_edge];
    [_VC.sevenButton.titleLabel setFont:_buttonsFont];
}

-(void)fitEightButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.sevenButton.frame.origin.x + _VC.sevenButton.frame.size.width + _offset;
    CGFloat y = _VC.inputField.frame.origin.y + _VC.inputField.frame.size.height + _row;
    [_VC.eightButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.eightButton setBackgroundColor:UIColor.orangeColor];
    [_VC.eightButton setTintColor:UIColor.whiteColor];
    [_VC.eightButton.layer setCornerRadius:_edge];
    [_VC.eightButton.titleLabel setFont:_buttonsFont];
}

-(void)fitNineButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.eightButton.frame.origin.x + _VC.eightButton.frame.size.width + _offset;
    CGFloat y = _VC.inputField.frame.origin.y + _VC.inputField.frame.size.height + _row;
    [_VC.nineButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.nineButton setBackgroundColor:UIColor.orangeColor];
    [_VC.nineButton setTintColor:UIColor.whiteColor];
    [_VC.nineButton.layer setCornerRadius:_edge];
    [_VC.nineButton.titleLabel setFont:_buttonsFont];
}

-(void)fitPlusButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.nineButton.frame.origin.x + _VC.nineButton.frame.size.width + _offset;
    CGFloat y = _VC.inputField.frame.origin.y + _VC.inputField.frame.size.height + _row;
    [_VC.plusButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.plusButton setBackgroundColor:UIColor.orangeColor];
    [_VC.plusButton setTintColor:UIColor.whiteColor];
    [_VC.plusButton.layer setCornerRadius:_edge];
    [_VC.plusButton.titleLabel setFont:_buttonsFont];
}

-(void)fitFourButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.view.frame.origin.x + _edge;
    CGFloat y = _VC.sevenButton.frame.origin.y + _VC.sevenButton.frame.size.height + _offset;
    [_VC.fourButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.fourButton setBackgroundColor:UIColor.orangeColor];
    [_VC.fourButton setTintColor:UIColor.whiteColor];
    [_VC.fourButton.layer setCornerRadius:_edge];
    [_VC.fourButton.titleLabel setFont:_buttonsFont];
}

-(void)fitFiveButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.fourButton.frame.origin.x + _VC.fourButton.frame.size.width + _offset;
    CGFloat y = _VC.sevenButton.frame.origin.y + _VC.sevenButton.frame.size.height + _offset;
    [_VC.fiveButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.fiveButton setBackgroundColor:UIColor.orangeColor];
    [_VC.fiveButton setTintColor:UIColor.whiteColor];
    [_VC.fiveButton.layer setCornerRadius:_edge];
    [_VC.fiveButton.titleLabel setFont:_buttonsFont];
}

-(void)fitSixButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.fiveButton.frame.origin.x + _VC.fiveButton.frame.size.width + _offset;
    CGFloat y = _VC.sevenButton.frame.origin.y + _VC.sevenButton.frame.size.height + _offset;
    [_VC.sixButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.sixButton setBackgroundColor:UIColor.orangeColor];
    [_VC.sixButton setTintColor:UIColor.whiteColor];
    [_VC.sixButton.layer setCornerRadius:_edge];
    [_VC.sixButton.titleLabel setFont:_buttonsFont];
}

-(void)fitMinusButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.sixButton.frame.origin.x + _VC.sixButton.frame.size.width + _offset;
    CGFloat y = _VC.sevenButton.frame.origin.y + _VC.sevenButton.frame.size.height + _offset;
    [_VC.minusButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.minusButton setBackgroundColor:UIColor.orangeColor];
    [_VC.minusButton setTintColor:UIColor.whiteColor];
    [_VC.minusButton.layer setCornerRadius:_edge];
    [_VC.minusButton.titleLabel setFont:_buttonsFont];
}

-(void)fitOneButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.view.frame.origin.x + _edge;
    CGFloat y = _VC.fourButton.frame.origin.y + _VC.fourButton.frame.size.height + _offset;
    [_VC.oneButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.oneButton setBackgroundColor:UIColor.orangeColor];
    [_VC.oneButton setTintColor:UIColor.whiteColor];
    [_VC.oneButton.layer setCornerRadius:_edge];
    [_VC.oneButton.titleLabel setFont:_buttonsFont];
}

-(void)fitTwoButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.oneButton.frame.origin.x + _VC.oneButton.frame.size.width + _offset;
    CGFloat y = _VC.fiveButton.frame.origin.y + _VC.fiveButton.frame.size.height + _offset;
    [_VC.twoButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.twoButton setBackgroundColor:UIColor.orangeColor];
    [_VC.twoButton setTintColor:UIColor.whiteColor];
    [_VC.twoButton.layer setCornerRadius:_edge];
    [_VC.twoButton.titleLabel setFont:_buttonsFont];
}

-(void)fitThreeButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.twoButton.frame.origin.x + _VC.twoButton.frame.size.width + _offset;
    CGFloat y = _VC.fiveButton.frame.origin.y + _VC.fiveButton.frame.size.height + _offset;
    [_VC.threeButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.threeButton setBackgroundColor:UIColor.orangeColor];
    [_VC.threeButton setTintColor:UIColor.whiteColor];
    [_VC.threeButton.layer setCornerRadius:_edge];
    [_VC.threeButton.titleLabel setFont:_buttonsFont];
}

-(void)fitMultiplyButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.threeButton.frame.origin.x + _VC.threeButton.frame.size.width + _offset;
    CGFloat y = _VC.fiveButton.frame.origin.y + _VC.fiveButton.frame.size.height + _offset;
    [_VC.multiplyButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.multiplyButton setBackgroundColor:UIColor.orangeColor];
    [_VC.multiplyButton setTintColor:UIColor.whiteColor];
    [_VC.multiplyButton.layer setCornerRadius:_edge];
    [_VC.multiplyButton.titleLabel setFont:_buttonsFont];
}

-(void)fitClearButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.view.frame.origin.x + _edge;
    CGFloat y = _VC.oneButton.frame.origin.y + _VC.oneButton.frame.size.height + _offset;
    [_VC.clearButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.clearButton setBackgroundColor:UIColor.orangeColor];
    [_VC.clearButton setTintColor:UIColor.whiteColor];
    [_VC.clearButton.layer setCornerRadius:_edge];
    [_VC.clearButton.titleLabel setFont:_buttonsFont];
}

-(void)fitZeroButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.clearButton.frame.origin.x + _VC.clearButton.frame.size.width + _offset;
    CGFloat y = _VC.oneButton.frame.origin.y + _VC.oneButton.frame.size.height + _offset;
    [_VC.zeroButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.zeroButton setBackgroundColor:UIColor.orangeColor];
    [_VC.zeroButton setTintColor:UIColor.whiteColor];
    [_VC.zeroButton.layer setCornerRadius:_edge];
    [_VC.zeroButton.titleLabel setFont:_buttonsFont];
}

-(void)fitEqualButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.zeroButton.frame.origin.x + _VC.zeroButton.frame.size.width + _offset;
    CGFloat y = _VC.oneButton.frame.origin.y + _VC.oneButton.frame.size.height + _offset;
    [_VC.equalButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.equalButton setBackgroundColor:UIColor.orangeColor];
    [_VC.equalButton setTintColor:UIColor.whiteColor];
    [_VC.equalButton.layer setCornerRadius:_edge];
    [_VC.equalButton.titleLabel setFont:_buttonsFont];
}

-(void)fitDivideButton {
    CGFloat width = _buttonsWidth;
    CGFloat height = width;
    CGFloat x = _VC.equalButton.frame.origin.x + _VC.equalButton.frame.size.width + _offset;
    CGFloat y = _VC.oneButton.frame.origin.y + _VC.oneButton.frame.size.height + _offset;
    [_VC.divideButton setFrame:CGRectMake(x, y, width, height)];
    [_VC.divideButton setBackgroundColor:UIColor.orangeColor];
    [_VC.divideButton setTintColor:UIColor.whiteColor];
    [_VC.divideButton.layer setCornerRadius:_edge];
    [_VC.divideButton.titleLabel setFont:_buttonsFont];
}

@end

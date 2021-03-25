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
    [modeSwitcher setFrame:CGRectMake(_homeView.center.x-160, _homeView.center.y-32, 320, 64)];
}

-(void)fitInputField:(UITextField *)inputField {
    
}

@end

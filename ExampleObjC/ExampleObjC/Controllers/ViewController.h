//
//  ViewController.h
//  ExampleObjC
//
//  Created by Игорь Пенкин on 25.03.2021.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate> 

@property (weak, nonatomic) IBOutlet UISegmentedControl *modeSwitcher;
@property (weak, nonatomic) IBOutlet UIButton *checkButton;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;
@property (weak, nonatomic) IBOutlet UIButton *zeroButton;
@property (weak, nonatomic) IBOutlet UIButton *equalButton;
@property (weak, nonatomic) IBOutlet UIButton *divideButton;
@property (weak, nonatomic) IBOutlet UIButton *multiplyButton;
@property (weak, nonatomic) IBOutlet UIButton *minusButton;
@property (weak, nonatomic) IBOutlet UIButton *plusButton;
@property (weak, nonatomic) IBOutlet UIButton *oneButton;
@property (weak, nonatomic) IBOutlet UIButton *twoButton;
@property (weak, nonatomic) IBOutlet UIButton *threeButton;
@property (weak, nonatomic) IBOutlet UIButton *fourButton;
@property (weak, nonatomic) IBOutlet UIButton *fiveButton;
@property (weak, nonatomic) IBOutlet UIButton *sixButton;
@property (weak, nonatomic) IBOutlet UIButton *sevenButton;
@property (weak, nonatomic) IBOutlet UIButton *eightButton;
@property (weak, nonatomic) IBOutlet UIButton *nineButton;

@end


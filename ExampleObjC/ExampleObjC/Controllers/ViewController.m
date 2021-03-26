//
//  ViewController.m
//  ExampleObjC
//
//  Created by Игорь Пенкин on 25.03.2021.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import "ViewFitter.h"

@interface ViewController ()

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

@property (nonatomic) CGFloat bufferValue;
@property (nonatomic) CGFloat inputValue;
@property (nonatomic) NSString *outputValue;
@property (nonatomic) CGFloat multiplicator;

- (void)setupForAlphabet:(BOOL)hidden;

@end

@implementation ViewController
/*
 
    TO DO...
    ENUM holding calculation state when user turn on math action
 
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupForAlphabet:NO];
    _inputValue = 0;
    _bufferValue = 0;
    _outputValue = @"";
    _multiplicator = 10.0;
}

- (void)setupForAlphabet:(BOOL)hidden {
    [self.modeSwitcher setHidden:NO];
    [self.inputField setHidden:NO];
    [self.inputField setUserInteractionEnabled:hidden];
    [self.checkButton setHidden:!hidden];
    
    [self.clearButton setHidden:hidden];
    [self.zeroButton setHidden:hidden];
    [self.equalButton setHidden:hidden];
    [self.divideButton setHidden:hidden];
    [self.multiplyButton setHidden:hidden];
    [self.minusButton setHidden:hidden];
    [self.plusButton setHidden:hidden];
    [self.oneButton setHidden:hidden];
    [self.twoButton setHidden:hidden];
    [self.threeButton setHidden:hidden];
    [self.fourButton setHidden:hidden];
    [self.fiveButton setHidden:hidden];
    [self.sixButton setHidden:hidden];
    [self.sevenButton setHidden:hidden];
    [self.eightButton setHidden:hidden];
    [self.nineButton setHidden:hidden];
}

// MARK: - Strategy mode switcher
- (IBAction)modeTurned:(id)sender {
    switch (_modeSwitcher.selectedSegmentIndex) {
        case 0:
            [self setupForAlphabet:NO];
            break;
        case 1:
            [self clearButtonPressed:_clearButton];
            [self setupForAlphabet:YES];
            break;
        default:
            NSLog(@"WARNING: It would never have happened.");
            break;
    }
}

// MARK: - Alphabet strategy
- (IBAction)checkButtonPressed:(id)sender {
}

// MARK: - Calculator strategy
- (IBAction)equalButtonPressed:(id)sender {
    // TO DO
    // switch to manage with cases of calculation + - / *
}
- (IBAction)clearButtonPressed:(id)sender {
    self.bufferValue = 0;
    self.inputValue = 0;
    self.outputValue = @"";
    [self.inputField setText:@""];
}
- (IBAction)plusButtonPressed:(id)sender {
    _bufferValue = _inputValue;
    _inputValue = 0;
    [self.inputField setText:@""];
    // set calculator on oparator state +
}
- (IBAction)minusButtonPressed:(id)sender {
}
- (IBAction)multiplyButtonPressed:(id)sender {
}
- (IBAction)divideButtonPressed:(id)sender {
}

- (IBAction)zeroPressed:(id)sender {
    self.inputValue = self.inputValue * _multiplicator + 0;
    [self.inputField setText:[NSString stringWithFormat:@"%f", _inputValue]];
}
- (IBAction)onePressed:(id)sender {
    self.inputValue = self.inputValue * _multiplicator + 1;
    [self.inputField setText:[NSString stringWithFormat:@"%f", _inputValue]];
}
- (IBAction)twoPressed:(id)sender {
    self.inputValue = self.inputValue * _multiplicator + 2;
    [self.inputField setText:[NSString stringWithFormat:@"%f", _inputValue]];
}
- (IBAction)threePressed:(id)sender {
    self.inputValue = self.inputValue * _multiplicator + 3;
    [self.inputField setText:[NSString stringWithFormat:@"%f", _inputValue]];
}
- (IBAction)fourPressed:(id)sender {
    self.inputValue = self.inputValue * _multiplicator + 4;
    [self.inputField setText:[NSString stringWithFormat:@"%f", _inputValue]];
}
- (IBAction)fivePressed:(id)sender {
    self.inputValue = self.inputValue * _multiplicator + 5;
    [self.inputField setText:[NSString stringWithFormat:@"%f", _inputValue]];
}
- (IBAction)sixPressed:(id)sender {
    self.inputValue = self.inputValue * _multiplicator + 6;
    [self.inputField setText:[NSString stringWithFormat:@"%f", _inputValue]];
}
- (IBAction)sevenPressed:(id)sender {
    self.inputValue = self.inputValue * _multiplicator + 7;
    [self.inputField setText:[NSString stringWithFormat:@"%f", _inputValue]];
}
- (IBAction)eightPressed:(id)sender {
    self.inputValue = self.inputValue * _multiplicator + 8;
    [self.inputField setText:[NSString stringWithFormat:@"%f", _inputValue]];
}
- (IBAction)ninePressed:(id)sender {
    self.inputValue = self.inputValue * _multiplicator + 9;
    [self.inputField setText:[NSString stringWithFormat:@"%f", _inputValue]];
}

@end



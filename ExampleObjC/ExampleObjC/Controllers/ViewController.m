//
//  ViewController.m
//  ExampleObjC
//
//  Created by Игорь Пенкин on 25.03.2021.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import "ViewFitter.h"
#import "CalculatorState.h"
#import "MathClass.h"

@interface ViewController ()
// UI
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
// Calculator properties
@property (nonatomic) CGFloat bufferValue;
@property (nonatomic) CGFloat inputValue;
@property (nonatomic) NSString *outputValue;
@property (nonatomic) CGFloat multiplicator;
@property (nonatomic) enum CalculatorState calcState;
@property (nonatomic) MathClass *mathmatics;
// Alphabet properties

- (void)setupForAlphabet:(BOOL)hidden;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupForAlphabet:NO];
    _inputValue = 0;
    _bufferValue = 0;
    _outputValue = @"";
    _multiplicator = 10.0;
    _calcState = eNone;
    _mathmatics = [MathClass new];
}

- (void)setupForAlphabet:(BOOL)hidden {
    [self.modeSwitcher setHidden:NO];
    [self.inputField setHidden:NO];
    [self.inputField setUserInteractionEnabled:hidden];
    [self.inputField setText:@""];
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
            [self setupForAlphabet:YES];
            [self clearButtonPressed:_clearButton];
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
    switch (_calcState) {
        case ePlus:
            _bufferValue = [self.mathmatics sumOf:_bufferValue andValue:_inputValue];
            break;
        case eMinus:
            _bufferValue =  [self.mathmatics subtructFrom:_bufferValue andValue:_inputValue];
            break;
        case eMultiply:
            _bufferValue = [self.mathmatics multiply:_bufferValue by:_inputValue];
            break;
        case eDivide:
            _bufferValue = [self.mathmatics divide:_bufferValue by:_inputValue];
            break;
        default:
            break;
    }
    _outputValue = [NSString stringWithFormat:@"%f", _bufferValue];
    [self.inputField setText:_outputValue];
    _inputValue = 0;
    _calcState = eNone;
}

- (IBAction)clearButtonPressed:(id)sender {
    _bufferValue = 0;
    _inputValue = 0;
    _outputValue = @"";
    _calcState = eNone;
    [self.inputField setText:@""];
}

- (IBAction)plusButtonPressed:(id)sender {
    _bufferValue = [self.mathmatics sumOf:_bufferValue andValue:_inputValue];
    _outputValue = [NSString stringWithFormat:@"%f", _bufferValue];
    _inputValue = 0;
    [self.inputField setText:_outputValue];
    _calcState = ePlus;
}

- (IBAction)minusButtonPressed:(id)sender {
    _bufferValue = [self.mathmatics subtructFrom:_bufferValue andValue:_inputValue];
    _outputValue = [NSString stringWithFormat:@"%f", _bufferValue];
    _inputValue = 0;
    [self.inputField setText:_outputValue];
    _calcState = eMinus;
}

- (IBAction)multiplyButtonPressed:(id)sender {
    if ((_calcState == eNone) && (_outputValue.length<1)) {
        _bufferValue = _inputValue;
        _outputValue = [NSString stringWithFormat:@"%f", _bufferValue];
        [self.inputField setText:_outputValue];
    } else if ((_calcState == eNone) && (_outputValue.length>=1)) {
        [self.inputField setText:_outputValue];
    } else {
        _bufferValue = [self.mathmatics multiply:_bufferValue by:_inputValue];
        _outputValue = [NSString stringWithFormat:@"%f", _bufferValue];
        [self.inputField setText:_outputValue];
    }
    _inputValue = 0;
    _calcState = eMultiply;
}

- (IBAction)divideButtonPressed:(id)sender {
    if ((_calcState == eNone) && (_outputValue.length<1)) {
        _bufferValue = _inputValue;
        _outputValue = [NSString stringWithFormat:@"%f", _bufferValue];
        [self.inputField setText:_outputValue];
    } else if ((_calcState == eNone) && (_outputValue.length>=1)) {
        [self.inputField setText:_outputValue];
    } else {
        _bufferValue = [self.mathmatics divide:_bufferValue by:_inputValue];
        _outputValue = [NSString stringWithFormat:@"%f", _bufferValue];
        [self.inputField setText:_outputValue];
    }
    _inputValue = 0;
    _calcState = eDivide;
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



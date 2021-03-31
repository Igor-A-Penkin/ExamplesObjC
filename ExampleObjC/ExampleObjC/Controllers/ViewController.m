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
#import "Alphabet.h"

@interface ViewController ()
// UI
@property (nonatomic) ViewFitter *viewFitter;
// Calculator properties
@property (nonatomic) CGFloat bufferValue;
@property (nonatomic) CGFloat inputValue;
@property (nonatomic) NSString *outputValue;
@property (nonatomic) CGFloat multiplicator;
@property (nonatomic) enum CalculatorState calcState;
@property (nonatomic) MathClass *mathmatics;
// Alphabet properties
@property (nonatomic) Alphabet *alphabet;

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
    _alphabet = [Alphabet new];
    _inputField.delegate = self;
    _viewFitter = [ViewFitter new];
    [_viewFitter fitSubviewsFor:self];
}

- (void)setupForAlphabet:(BOOL)hidden {
    [self.modeSwitcher setHidden:NO];
    [self.inputField setHidden:NO];
    [self.inputField setUserInteractionEnabled:hidden];
    [self.inputField setText:@""];
    self.inputField.placeholder = hidden ? @"Type a letter" : @"0";
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
    if (_inputField.text.length > 1) {
        _inputField.text = @"";
        _inputField.placeholder = @"Type just one letter...";
    } else {
        enum Language lang = [self.alphabet check:_inputField.text];
        [self displayLanguage:lang];
    }
}

-(void)displayLanguage:(enum Language)language {
    switch (language) {
        case eRussian:
            _inputField.text = @"";
            _inputField.placeholder = @"Russian";
            break;
        case eEnglish:
            _inputField.text = @"";
            _inputField.placeholder = @"English";
            break;
        case eUnknown:
            _inputField.text = @"";
            _inputField.placeholder = @"Unknown language, try again...";
            break;
        default:
            break;
    }
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
    if (_outputValue.length<1) {
        _bufferValue = _inputValue;
        _outputValue = [NSString stringWithFormat:@"%f", _bufferValue];
    } else {
        _bufferValue = [self.mathmatics subtructFrom:_bufferValue andValue:_inputValue];
        _outputValue = [NSString stringWithFormat:@"%f", _bufferValue];
    }
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



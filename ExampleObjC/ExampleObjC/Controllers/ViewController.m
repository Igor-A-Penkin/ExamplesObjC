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
@property (nonatomic) CalculatorState calcState;
@property (nonatomic) MathClass *mathmatics;
// Alphabet properties
@property (nonatomic) Alphabet *alphabet;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        NSLog(@"ViewController was initiated.");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupForAlphabet:NO];
    self.inputValue = 0;
    self.bufferValue = 0;
    self.outputValue = @"";
    self.multiplicator = 10.0;
    self.calcState = eNone;
    self.inputField.delegate = self;
    
    self.mathmatics = [[MathClass alloc] init];
    self.alphabet = [[Alphabet alloc] init];
    
    self.viewFitter = [[ViewFitter alloc] initWithVC:self];
    [self.viewFitter fitSubviewsFor];
    [self.viewFitter release];
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
            [self clearButtonPressed:self.clearButton];
            break;
        default:
            NSLog(@"WARNING: It would never have happened.");
            break;
    }
}

// MARK: - Alphabet strategy
- (IBAction)checkButtonPressed:(id)sender {
    if (self.inputField.text.length > 1) {
        self.inputField.text = @"";
        self.inputField.placeholder = @"Type just one letter...";
    } else {
        Language lang = [self.alphabet check:self.inputField.text];
        [self displayLanguage:lang];
    }
}

-(void)displayLanguage:(enum Language)language {
    switch (language) {
        case eRussian:
            self.inputField.text = @"";
            self.inputField.placeholder = @"Russian";
            break;
        case eEnglish:
            self.inputField.text = @"";
            self.inputField.placeholder = @"English";
            break;
        case eUnknown:
            self.inputField.text = @"";
            self.inputField.placeholder = @"Unknown language, try again...";
            break;
        default:
            break;
    }
}


// MARK: - Calculator strategy

- (IBAction)equalButtonPressed:(id)sender {
    switch (self.calcState) {
        case ePlus:
            self.bufferValue = [self.mathmatics sumOf:self.bufferValue andValue:self.inputValue];
            break;
        case eMinus:
            self.bufferValue =  [self.mathmatics subtructFrom:self.bufferValue andValue:self.inputValue];
            break;
        case eMultiply:
            self.bufferValue = [self.mathmatics multiply:self.bufferValue by:self.inputValue];
            break;
        case eDivide:
            self.bufferValue = [self.mathmatics divide:self.bufferValue by:self.inputValue];
            break;
        default:
            break;
    }
    self.outputValue = [NSString stringWithFormat:@"%f", self.bufferValue];
    [self.inputField setText:self.outputValue];
    self.inputValue = 0;
    self.calcState = eNone;
}

- (IBAction)clearButtonPressed:(id)sender {
    self.bufferValue = 0;
    self.inputValue = 0;
    self.outputValue = @"";
    self.calcState = eNone;
    [self.inputField setText:@""];
}

- (IBAction)plusButtonPressed:(id)sender {
    self.bufferValue = [self.mathmatics sumOf:self.bufferValue andValue:self.inputValue];
    self.outputValue = [NSString stringWithFormat:@"%f", _bufferValue];
    self.inputValue = 0;
    [self.inputField setText:self.outputValue];
    self.calcState = ePlus;
}

- (IBAction)minusButtonPressed:(id)sender {
    if (self.outputValue.length<1) {
        self.bufferValue = self.inputValue;
        self.outputValue = [NSString stringWithFormat:@"%f", self.bufferValue];
    } else {
        self.bufferValue = [self.mathmatics subtructFrom:self.bufferValue andValue:self.inputValue];
        self.outputValue = [NSString stringWithFormat:@"%f", self.bufferValue];
    }
    self.inputValue = 0;
    [self.inputField setText:self.outputValue];
    self.calcState = eMinus;
}

- (IBAction)multiplyButtonPressed:(id)sender {
    if ((self.calcState == eNone) && (self.outputValue.length<1)) {
        self.bufferValue = self.inputValue;
        self.outputValue = [NSString stringWithFormat:@"%f", self.bufferValue];
        [self.inputField setText:self.outputValue];
    } else if ((self.calcState == eNone) && (self.outputValue.length>=1)) {
        [self.inputField setText:self.outputValue];
    } else {
        self.bufferValue = [self.mathmatics multiply:self.bufferValue by:self.inputValue];
        self.outputValue = [NSString stringWithFormat:@"%f", self.bufferValue];
        [self.inputField setText:self.outputValue];
    }
    self.inputValue = 0;
    self.calcState = eMultiply;
}

- (IBAction)divideButtonPressed:(id)sender {
    if ((self.calcState == eNone) && (self.outputValue.length<1)) {
        self.bufferValue = self.inputValue;
        self.outputValue = [NSString stringWithFormat:@"%f", self.bufferValue];
        [self.inputField setText:self.outputValue];
    } else if ((self.calcState == eNone) && (self.outputValue.length>=1)) {
        [self.inputField setText:self.outputValue];
    } else {
        self.bufferValue = [self.mathmatics divide:self.bufferValue by:self.inputValue];
        self.outputValue = [NSString stringWithFormat:@"%f", self.bufferValue];
        [self.inputField setText:self.outputValue];
    }
    self.inputValue = 0;
    self.calcState = eDivide;
}


- (IBAction)zeroPressed:(id)sender {
    self.inputValue = self.inputValue * self.multiplicator + 0;
    [self.inputField setText:[NSString stringWithFormat:@"%f", self.inputValue]];
}

- (IBAction)onePressed:(id)sender {
    self.inputValue = self.inputValue * self.multiplicator + 1;
    [self.inputField setText:[NSString stringWithFormat:@"%f", self.inputValue]];
}

- (IBAction)twoPressed:(id)sender {
    self.inputValue = self.inputValue * self.multiplicator + 2;
    [self.inputField setText:[NSString stringWithFormat:@"%f", self.inputValue]];
}

- (IBAction)threePressed:(id)sender {
    self.inputValue = self.inputValue * self.multiplicator + 3;
    [self.inputField setText:[NSString stringWithFormat:@"%f", self.inputValue]];
}

- (IBAction)fourPressed:(id)sender {
    self.inputValue = self.inputValue * self.multiplicator + 4;
    [self.inputField setText:[NSString stringWithFormat:@"%f", self.inputValue]];
}

- (IBAction)fivePressed:(id)sender {
    self.inputValue = self.inputValue * self.multiplicator + 5;
    [self.inputField setText:[NSString stringWithFormat:@"%f", self.inputValue]];
}

- (IBAction)sixPressed:(id)sender {
    self.inputValue = self.inputValue * self.multiplicator + 6;
    [self.inputField setText:[NSString stringWithFormat:@"%f", self.inputValue]];
}

- (IBAction)sevenPressed:(id)sender {
    self.inputValue = self.inputValue * self.multiplicator + 7;
    [self.inputField setText:[NSString stringWithFormat:@"%f", self.inputValue]];
}

- (IBAction)eightPressed:(id)sender {
    self.inputValue = self.inputValue * self.multiplicator + 8;
    [self.inputField setText:[NSString stringWithFormat:@"%f", self.inputValue]];
}

- (IBAction)ninePressed:(id)sender {
    self.inputValue = self.inputValue * self.multiplicator + 9;
    [self.inputField setText:[NSString stringWithFormat:@"%f", self.inputValue]];
}

- (void)dealloc {
    [self.mathmatics release];
    [self.outputValue release];
    [self.alphabet release];
    NSLog(@"ViewController was deallocated.");
    [super dealloc];
}

@end



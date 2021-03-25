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

@property (nullable, nonatomic) CGFloat *bufferValue;
@property (nullable, nonatomic) NSString *outputValue;

- (void)setupForAlphabet:(BOOL)hidden;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupForAlphabet:NO];
    _bufferValue = NULL;
    _outputValue = @"";
}

- (void)setupForAlphabet:(BOOL)hidden {
    [self.modeSwitcher setHidden:NO];
    //[self.modeSwitcher setSelectedSegmentIndex:0];
    [self.inputField setHidden:NO];
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

// MARK: - Mode strategy
- (IBAction)modeTurned:(id)sender {
    switch (_modeSwitcher.selectedSegmentIndex) {
        case 0:
            [self setupForAlphabet:NO];
            break;
        case 1:
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
}
- (IBAction)clearButtonPressed:(id)sender {
}
- (IBAction)plusButtonPressed:(id)sender {
}
- (IBAction)minusButtonPressed:(id)sender {
}
- (IBAction)multiplyButtonPressed:(id)sender {
}
- (IBAction)divideButtonPressed:(id)sender {
}

- (IBAction)zeroPressed:(id)sender {
}
- (IBAction)onePressed:(id)sender {
}
- (IBAction)twoPressed:(id)sender {
}
- (IBAction)threePressed:(id)sender {
}
- (IBAction)fourPressed:(id)sender {
}
- (IBAction)fivePressed:(id)sender {
}
- (IBAction)sixPressed:(id)sender {
}
- (IBAction)sevenPressed:(id)sender {
}
- (IBAction)eightPressed:(id)sender {
}
- (IBAction)ninePressed:(id)sender {
}

@end



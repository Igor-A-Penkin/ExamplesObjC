//
//  ViewController.m
//  ExampleObjC
//
//  Created by Игорь Пенкин on 12.04.2021.
//

#import "ViewController.h"
#import "Human/Human.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textInput;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIButton *printButton;

@property (nonatomic) NSMutableArray<NSString *> *strings;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _strings = [NSMutableArray new];
    [self makeStructureObjects];
}

// MARK: - task 1
- (IBAction)saveButtonPressed:(id)sender {
    [_strings addObject:_textInput.text];
    _textInput.text = @"";
}

- (IBAction)printButtonPressed:(id)sender {
    [self printWithForIn];
    [self printWithWhile];
    [self printWithDoWhile];
}

- (void)printWithForIn {
    NSLog(@"Printed with FOR-IN");
    for (NSString *string in _strings) {
        NSLog(@"- %@", string);
    }
}

- (void)printWithWhile {
    NSLog(@"Printed with WHILE");
    NSInteger count = 0;
    while (count < _strings.count) {
        NSLog(@"- %@", _strings[count]);
        count+=1;
    }
}

- (void)printWithDoWhile {
    if (_strings.count == 0) {
        return;
    }
    NSLog(@"Printed with DO-WHILE");
    NSInteger count = 0;
    do {
        NSLog(@"- %@", _strings[count]);
        count+=1;
    } while (count < _strings.count);
}

// MARK: - task 3
- (void)makeStructureObjects {
    Human man;
    man.name = @"Oleg";
    man.age = 23;
    man.gander = Male;
    
    Human woman = { @"Olga", 21, Female };
    
    NSLog(@"First object:\n name: %@,\n age: %ld,\n gander: %ld;", man.name, (long)man.age, (long)man.gander);
    NSLog(@"Second object:\n name: %@,\n age: %ld,\n gander: %ld;", woman.name, (long)woman.age, (long)woman.gander);
}

@end

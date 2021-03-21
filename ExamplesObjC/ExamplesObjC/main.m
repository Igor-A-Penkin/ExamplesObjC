//
//  main.m
//  ExamplesObjC
//
//  Created by Игорь Пенкин on 20.03.2021.
//

#import <Foundation/Foundation.h>
#import "funcs.h"
#import "MathClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        MathClass *mathClass = [[MathClass alloc] init];
        
        CGFloat first = 0;
        CGFloat second = 0;
        printf("First number: ");
        scanf("%lf", &first);
        printf("Second number: ");
        scanf("%lf", &second);

        NSLog(@"\nMax: %f", [mathClass maxOf:first and:second]);
        NSLog(@"\nSquare first: %f", [mathClass square:first]);
        NSLog(@"\nSquare second: %f", [mathClass square:second]);
        NSLog(@"\nSum: %f", [mathClass sumOf:first and:second]);
        NSLog(@"\nSubtruction: %f", [mathClass subtructFrom:first value:second]);
        NSLog(@"\nDivision: %f", [mathClass divide:first by:second]);
        NSLog(@"\nMultiplication: %f", [mathClass multiply:first by:second]);
        NSLog(@"\nRemainder of division: %ld",
              (long)[mathClass remainderOf:(NSInteger)first
                                 dividedBy:(NSInteger)second]);
    }
    return 0;
}



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

        NSLog(@"\nMax: %f; Square first: %f; Square second: %f; Sum: %f; Subtruction: %f; Division: %f; Multiplication: %f; Remainder of division: %ld;",
              [mathClass maxOf:first and:second],
              [mathClass square:first],
              [mathClass square:second],
              [mathClass sumOf:first and:second],
              [mathClass subtructFrom:first value:second],
              [mathClass divide:first by:second],
              [mathClass multiply:first by:second],
              (long)[mathClass remainderOf:(NSInteger)first
                                 dividedBy:(NSInteger)second]);
        
        CGFloat third = 0;
        printf("First number: ");
        scanf("%lf", &first);
        printf("Second number: ");
        scanf("%lf", &second);
        printf("Second number: ");
        scanf("%lf", &third);
        NSLog(@"Average: %f", [mathClass averageOf:first and:second and:third]);
    }
    return 0;
}



//
//  funcs.m
//  ExamplesObjC
//
//  Created by Игорь Пенкин on 20.03.2021.
//

#import <Foundation/Foundation.h>

void useConvertor()
{
    double value = 1.2;
    int number = (int)value;
    NSLog(@"Converted: %d", number);
}

void useMath()
{
    NSInteger integer = 11+89;
    integer++;
    integer--;
    NSLog(@"Calculated: %ld", (long)integer);
}

void showTypeExmpls()
{
    //    BOOL == bool;
    //    NSInteger == int;
    //    CGFloat == float, double;
    //    NSNumber == number objct;
    //    NSString == @"" == [char];
    //    NSMutableString;
    //    NSArray *staticArray = [ 1, 2, 3];
    //    NSMutableArray *array = [ 1, 2, 3];
    
    /*
    BOOL flag = YES || NO;
    NSInteger intNumber = 3;
    const NSInteger intConst = 4;
    NSNumber *nsNumber = [NSNumber numberWithInt:(int)intNumber];
    NSLog(@"My values: %d, %ld, %ld, %@",
          flag,
          (long)intNumber,
          (long)intConst,
          nsNumber);
    useConvertor();
    useMath();
    showTypeExmpls();
    */
    
    int intValue = 3;
    NSLog(@"Integer: %d", intValue);
    
    NSInteger nsInteger = 3;
    NSLog(@"NSInteger: %ld", (long)nsInteger);
    
    char *character = "f";
    NSLog(@"Char: %s", character);
    
    NSString *nsString = @"string";
    NSLog(@"String: %@", nsString);
    
    bool booleanC = true;
    NSLog(@"Boolean C: %d", booleanC);
    
    BOOL boolObjC = YES;
    NSLog(@"Bool ObjC: %d", boolObjC);
    
    float floatValue = 3.43434;
    NSLog(@"Float: %f", floatValue);
    
    double doubleValue = 23.2543634636;
    NSLog(@"Double: %f", doubleValue);
    
    CGFloat cgFloat = 12.434324;
    NSLog(@"CGFloat: %f", cgFloat);
    
    NSNumber *nsNumber = [NSNumber numberWithInt:intValue];
    NSLog(@"Number: %@", nsNumber);
}

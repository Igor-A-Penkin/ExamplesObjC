//
//  main.m
//  ExampleObjC
//
//  Created by Игорь Пенкин on 25.03.2021.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    appDelegateClassName = NSStringFromClass([AppDelegate class]);
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

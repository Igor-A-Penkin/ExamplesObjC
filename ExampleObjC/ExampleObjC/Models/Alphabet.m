//
//  Alphabet.m
//  ExampleObjC
//
//  Created by developer on 29.03.2021.
//

#import <Foundation/Foundation.h>
#import "Alphabet.h"

@implementation Alphabet

- (instancetype)init
{
    self = [super init];
    if (self) {
        _russian = [[NSArray alloc] initWithObjects:@"а", @"б", @"в", @"г", @"д", @"е", @"ё", @"ж", @"з", @"и", @"й", @"к", @"л", @"м", @"н", @"о", @"п", @"р", @"с", @"т", @"у", @"ф", @"х", @"ц", @"ч", @"ш", @"щ", @"ъ", @"ы", @"ь", @"э", @"ю", @"я", nil];
        _english = [[NSArray alloc] initWithObjects:@"q", @"w", @"e", @"r", @"t", @"y", @"u", @"i", @"o", @"p", @"a", @"s", @"d", @"f", @"g", @"h", @"j", @"k", @"l", @"z", @"x", @"c", @"v", @"b", @"n", @"m", nil];
    }
    return self;
}

-(enum Language)check:(NSString *)letter {
    if ([self check:letter with:eRussian]) {
        return eRussian;
    } else if ([self check:letter with:eEnglish]) {
        return eEnglish;
    }
    return eUnknown;
}

-(BOOL)check:(NSString *)letter with:(enum Language)language {
    switch (language) {
        case eEnglish:
            return [self checkWithEnglish:letter];
            break;
        case eRussian:
            return [self checkWithRussian:letter];
            break;
        default:
            return NO;
            break;
    }
}

-(BOOL)checkWithRussian:(NSString *)letter {
    for (int i = 0; i<=_russian.count; i++) {
        if ([_russian containsObject:letter]) {
            return YES;
        }
    }
    return NO;
}

-(BOOL)checkWithEnglish:(NSString *)letter {
    for (int i = 0; i<=_english.count; i++) {
        if ([_english containsObject:letter]) {
            return YES;
        }
    }
    return NO;
}

@end

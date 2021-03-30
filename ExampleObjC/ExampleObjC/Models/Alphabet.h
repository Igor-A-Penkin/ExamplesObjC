//
//  Alphabet.h
//  ExampleObjC
//
//  Created by developer on 29.03.2021.
//

#ifndef Alphabet_h
#define Alphabet_h

@interface Alphabet : NSObject

enum Language {
    eEnglish,
    eRussian,
    eUnknown
};

@property (nonatomic, readonly) NSArray *russian;
@property (nonatomic, readonly) NSArray *english;
@property (nonatomic, readonly) enum Language languages;

-(enum Language)check:(NSString *)letter;
-(BOOL)check:(NSString *)letter with:(enum Language)language;

@end

#endif /* Alphabet_h */

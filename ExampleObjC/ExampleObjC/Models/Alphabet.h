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
    eRussian
};

@property (nonatomic, readonly) NSArray *russian;
@property (nonatomic, readonly) NSArray *english;

-(BOOL)check:(NSString *)letter with:(enum Language)language;

@end

#endif /* Alphabet_h */

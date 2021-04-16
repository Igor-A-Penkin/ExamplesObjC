//
//  Alphabet.h
//  ExampleObjC
//
//  Created by developer on 29.03.2021.
//

#ifndef Alphabet_h
#define Alphabet_h

@interface Alphabet : NSObject

typedef NS_ENUM(NSInteger, Language) {
    eEnglish,
    eRussian,
    eUnknown
};

@property (nonatomic, strong) NSArray *russian;
@property (nonatomic, strong) NSArray *english;
@property (nonatomic, readonly) Language languages;

-(Language)check:(NSString *)letter;
-(BOOL)check:(NSString *)letter with:(Language)language;

@end

#endif /* Alphabet_h */

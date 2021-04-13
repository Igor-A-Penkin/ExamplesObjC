//
//  Human.h
//  ExampleObjC
//
//  Created by developer on 13.04.2021.
//

#ifndef Human_h
#define Human_h

typedef NS_ENUM(NSInteger, Gander) {
    Female,
    Male,
    None
};

struct Human {
    __unsafe_unretained NSString *name;
    NSInteger age;
    Gander gander;
};

typedef struct Human Human;

#endif /* Human_h */

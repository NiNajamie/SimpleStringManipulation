//
//  InputCollector.m
//  SimpleStringManipulation
//
//  Created by Asuka Nakagawa on 2016-05-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector


-(NSString *)inputForPrompt:(NSString *)promptString {
    char inputChars2[50];
    NSLog(@"%@", promptString);
    fgets(inputChars2,50,stdin);
    return [NSString stringWithUTF8String:inputChars2];
}


@end

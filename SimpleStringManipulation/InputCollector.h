//
//  InputCollector.h
//  SimpleStringManipulation
//
//  Created by Asuka Nakagawa on 2016-05-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

// method will take in a single string parameter promptString, and return whatever text the user inputs after that prompt.
-(NSString *)inputForPrompt:(NSString *)promptString;


@end

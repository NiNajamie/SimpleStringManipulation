//
//  Contact.m
//  SimpleStringManipulation
//
//  Created by Asuka Nakagawa on 2016-05-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "Contact.h"
#import "InputCollector.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email {
    self = [super init];
    if (self) {
        self.name = name;
        self.email = email;
    }
    return self;
}


@end

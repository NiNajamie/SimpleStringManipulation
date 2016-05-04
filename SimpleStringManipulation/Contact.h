//
//  Contact.h
//  SimpleStringManipulation
//
//  Created by Asuka Nakagawa on 2016-05-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property(nonatomic, assign)NSString* name;
@property(nonatomic, assign)NSString* email;

- (instancetype)initWithName:(NSString *)name email:(NSString *)email;

@end

//
//  ContactList.m
//  SimpleStringManipulation
//
//  Created by Asuka Nakagawa on 2016-05-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "ContactList.h"


@implementation ContactList

- (instancetype)init {
    self = [super init];
    if (self) {
        self.contactList = [[NSMutableArray alloc] init];
    }
    return self;
}

// add a method called -(void)addContact:(Contact *)newContact, and in this method insert the contact into the ContactList's mutable array.
- (void)addContact:(Contact *)newContact {
    [self.contactList addObject:newContact];
    
}
- (void)listOfContacts {
    for (int i = 0; i < [self.contactList count]; i++) {
        
        Contact *object = self.contactList[i];
        // print out #: <full name> ()
        NSLog(@"%d: %@ (%@)", i, object.name, object.email);
        
    }
}

@end

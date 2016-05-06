//
//  ContactList.h
//  SimpleStringManipulation
//
//  Created by Asuka Nakagawa on 2016-05-03.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property(nonatomic)NSMutableArray* contactList;


// add a method called -(void)addContact:(Contact *)newContact
- (void)addContact:(Contact *)newContact;

// add a method to get listOfContacts from user input
- (void)listOfContacts;

@end

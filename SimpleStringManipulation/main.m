//
//  main.m
//  SimpleStringManipulation
//
//  Created by Asuka Nakagawa on 2016-05-02.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"
#import "Contact.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // create your ContactList instance outside your main-menu while loop, so that it isn't reset each loop.
        ContactList *newContactList = [[ContactList alloc] init];
        NSLog(@"%@", newContactList);
        
        
        // user inputs "quit" and get out of the loop
        while (YES) {
            NSString *input = [[InputCollector alloc] inputForPrompt:@"What would you like do next? new - Create a new contact, list - List all contacts, quit - Exit Application >"];

            if ([input containsString:@"quit"]) {
                NSLog(@"User quited app");
                break;
//            } else if ([input containsString:@"continue"]) {
//                NSString *secondInput = [[InputCollector alloc] inputForPrompt:@"tell me the phrase:"];
//                NSLog(@"Random phrase! %@", secondInput);
                
                // user inputs "new" for creating new contact
            } else if ([input containsString:@"new"]) {
                NSString *fullName = [[InputCollector alloc] inputForPrompt:@"Type your full-name: "];
//                NSLog(@"Your name is  %@", fullName);
                NSString *email = [[InputCollector alloc] inputForPrompt:@"Type your email: "];
//                NSLog(@"Your email is  %@", email);
                
                Contact *newContact = [[Contact alloc] initWithName:fullName email:email];
                NSLog(@"%@", newContact);
                [newContactList addContact:newContact];
                
                // type list for showing contactlist which user has input
            } else if ([input containsString:@"list"]) {
                [newContactList listOfContacts];
                
                
                
            }
        //}

            // Yesturedays code
//        // Uppercase
//        NSString *word = [[InputCollector alloc] inputForPrompt:@"Enter a word(change to Uppercase): "];
//        [word uppercaseString];
//        NSLog(@"Louder!: %@", [word uppercaseString]);
//        
//        // Lowercase
////        char inputChars2[20];
////        printf("Enter a word: ");
////        fgets(inputChars2,20,stdin);
////        NSString *word2 = [NSString stringWithUTF8String: inputChars2];
//        NSString *word2 = [[InputCollector alloc] inputForPrompt:@"Enter a word(change to Lowercase): "];
//        [word2 lowercaseString];
//        NSLog(@"Whisper!: %@", [word2 lowercaseString]);
//        
//        // Numberize (string "10" into int 10)
//        NSString *word3 = [[InputCollector alloc] inputForPrompt:@"Enter a NUMBER(change to Numberize): "];
//        NSInteger b = [word3 integerValue];
//        NSLog(@"Your input: %ld", (long)b);
//        
//        // Canadianize
//        char inputChars4[20];
//        printf("Enter a word(change to Canadianize): ");
//        fgets(inputChars4,20,stdin);
//        NSMutableString *word4 = [NSMutableString stringWithUTF8String: inputChars4];
//        NSLog(@"Canadian!: %@", [word4 stringByAppendingString:@",eh?"]);
//        
//        // Respond
//        char inputChars5[20];
//        printf("Enter a word(Respond): ");
//        fgets(inputChars5,20,stdin);
//        NSString *word5 = [NSString stringWithUTF8String: inputChars5] ;
//        if ([word5 hasSuffix:@"?\n"]) {
//            NSLog(@"I don't know.");
//        } else if ([word5 hasSuffix:@"!\n"]) {
//            NSLog(@"Whoa, calm down!");
//        } else {
//            NSLog(@":)");
//        }
//        
//        // De-Space-It
//        char inputChars6[20];
//        printf("Enter a word: ");
//        fgets(inputChars6,20,stdin);
//        NSString *word6 = [NSString stringWithUTF8String: inputChars6] ;
//        NSLog(@"De-Space-It: %@", [word6 stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
//            
//            //}
//        
//        
        }
        
    }
    return 0;

}

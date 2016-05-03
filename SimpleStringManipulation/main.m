//
//  main.m
//  SimpleStringManipulation
//
//  Created by Asuka Nakagawa on 2016-05-02.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Uppercase
        char inputChars[20];
        printf("Enter a word: ");
        fgets(inputChars,20,stdin);
        NSString *word = [NSString stringWithUTF8String: inputChars];
        [word uppercaseString];
        NSLog(@"Louder!: %@", [word uppercaseString]);
        
        // Lowercase
        char inputChars2[20];
        printf("Enter a word: ");
        fgets(inputChars2,20,stdin);
        NSString *word2 = [NSString stringWithUTF8String: inputChars2];
        [word2 lowercaseString];
        NSLog(@"Whisper!: %@", [word2 lowercaseString]);
        
        // Numberize (string "10" into int 10)
        char inputChars3[10];
        printf("Enter a number: ");
        fgets(inputChars3,10,stdin);
        NSString *word3 = [NSString stringWithUTF8String: inputChars3];
        NSInteger b = [word3 integerValue];
        NSLog(@"Your input: %ld", (long)b);
        
        // Canadianize
        char inputChars4[20];
        printf("Enter a word: ");
        fgets(inputChars4,20,stdin);
        NSMutableString *word4 = [NSMutableString stringWithUTF8String: inputChars4];
        NSLog(@"Canadian!: %@", [word4 stringByAppendingString:@",eh?"]);
        
        // Respond
        char inputChars5[20];
        printf("Enter a word: ");
        fgets(inputChars5,20,stdin);
        NSString *word5 = [NSString stringWithUTF8String: inputChars5] ;
        
        if ([word5 hasSuffix:@"?\n"]) {
            NSLog(@"I don't know.");
            
        } else if ([word5 hasSuffix:@"!\n"]) {
            NSLog(@"Whoa, calm down!");
            
        } else {
            NSLog(@":)");
        }
        
        // De-Space-It
        char inputChars6[20];
        printf("Enter a word: ");
        fgets(inputChars6,20,stdin);
        NSString *word6 = [NSString stringWithUTF8String: inputChars6] ;
        NSLog(@"De-Space-It: %@", [word6 stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
            
        
    }
    return 0;
}


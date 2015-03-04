//
//  NSString+SaudiCheck.m
//  checkSA
//
//  Created by Faisal AL-Otaibi on 2/7/1436 AH.
//  Copyright (c) 1436 Faisal AL-Otaibi. All rights reserved.
//

#import "NSString+SaudiCheck.h"

@implementation NSString (SaudiCheck)

-(BOOL)checkId{
    
    if([self rangeOfCharacterFromSet:[[NSCharacterSet decimalDigitCharacterSet] invertedSet]].location != NSNotFound) {
        return false;
    }
    
    if(self.length != 10) return false;
    
    int index0 = [[self substringWithRange:NSMakeRange(0, 1)] intValue];
    
    if(index0 != 2 && index0 != 1 ) return false;
    
    int sum=0;
    int pad_Length = 2;
    
    for (int i=0; i<10; i++) {
        if ( i % 2 == 0){
            
            int subStr = [[self substringWithRange:NSMakeRange(i, 1)] intValue]*2;
            
            NSString *padding = [@"" stringByPaddingToLength: pad_Length - [[NSString stringWithFormat:@"%i" ,subStr] length]
                                                  withString: @"0"
                                             startingAtIndex: 0];
            NSString *padded_string = [padding stringByAppendingString: [NSString stringWithFormat:@"%i" ,subStr]];
            
            int sub = [[padded_string substringWithRange:NSMakeRange(0, 1)] intValue];
            int sub2 = [[padded_string substringWithRange:NSMakeRange(1, 1)] intValue];
            
            sum = sum + sub + sub2;
            
            
            
        }else{
            sum = sum + [[self substringWithRange:NSMakeRange(i, 1)] intValue];
        }
        
    }
    
    return sum % 10 ? false : true;
}

@end

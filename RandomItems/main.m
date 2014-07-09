//
//  main.m
//  RandomItems
//
//  Created by Wenwen on 2014-07-03.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WCItem.h"
#import "WCItemContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
      
        NSMutableArray * items = [[NSMutableArray alloc] init];
        
        
        WCItem * backpack =[[WCItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        WCItem * calculator = [[WCItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        NSLog(@"%@", items);
        
        items = nil;
        backpack = nil;
        calculator = nil;
        NSLog(@"AFTER nil %@", items);
        
    }
    
    return 0;
}


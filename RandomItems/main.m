//
//  main.m
//  RandomItems
//
//  Created by Wenwen on 2014-07-03.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WCItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        NSMutableArray *items = [[NSMutableArray alloc] init];
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        for (NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        [items insertObject:@"Zero" atIndex:0];
        items = nil;
        
        WCItem * newItem = [[WCItem alloc]init];
        
        NSLog(@"%@, %@, %@, %d", newItem.itemName, newItem.serialNumber, newItem.dateCreated,newItem.valueInDollars);
        
        newItem.itemName = @"Red Rose";
        newItem.serialNumber = @"010101";
        newItem.valueInDollars = 12;
        
        NSLog(@"%@, %@, %@, %d", newItem.itemName, newItem.serialNumber, newItem.dateCreated,newItem.valueInDollars);
        
              
    }
    return 0;
}


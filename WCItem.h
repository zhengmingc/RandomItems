//
//  WCItem.h
//  RandomItems
//
//  Created by Wenwen on 2014-07-03.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WCItem : NSObject
{
    NSString * _itemName;
    NSString * _serialNumber;
    int _valueInDollars;
    NSDate * _dateCreated;
}

- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;


@end

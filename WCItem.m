//
//  WCItem.m
//  RandomItems
//
//  Created by Wenwen on 2014-07-03.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import "WCItem.h"

@implementation WCItem

- (void)setItemName:(NSString *)str
{
    _itemName = str;
}
- (NSString *)itemName
{
    return _itemName;
}
- (void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}
- (NSString *)serialNumber
{
    return _serialNumber;
}
- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}
- (int)valueInDollars
{
    return _valueInDollars;
}
- (NSDate *)dateCreated
{
    return _dateCreated;
}

@end

//
//  WCItem.m
//  RandomItems
//
//  Created by Wenwen on 2014-07-03.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

#import "WCItem.h"

@implementation WCItem

-(void) setContainedItem:(WCItem *)containedItem
{
    _containedItem = containedItem;
    self.containedItem.container = self;
}

-(NSString *) description
{
    NSString * descriptionString =
    [[NSString alloc] initWithFormat:@"%@ (%@) : Worth $%d, recorded on %@",
      self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    
    return descriptionString;
}

+(instancetype) randomIdem
{
    // Create an immutable array of three adjectives
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    // Create an immutable array of three nouns
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    // Get the index of a random adjective/noun from the lists
    // Note: The % operator, called the modulo operator, gives
    // you the remainder. So adjectiveIndex is a random number
    // from 0 to 2 inclusive.
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    // Note that NSInteger is not an object, but a type definition
    // for "long"
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    int randomValue = arc4random() % 100;
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    
    WCItem * newItem = [[self alloc] initWithItemName:randomName
                                        valueInDollars:randomValue
                                           serialNumber:randomSerialNumber];
    
    return newItem;
}

-(instancetype)initWithItemName :(NSString *) name
                 valueInDollars : (int) value
                   serialNumber : (NSString *) serial
{
    self =  [super init];
    if(self) {
        _itemName = name;
        _valueInDollars = value;
        _serialNumber = serial;
        _dateCreated = [NSDate date];
    }
    return self;
}

-(instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
            valueInDollars: 0
              serialNumber:@""];
    
}

-(instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)serial
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:serial];
}

-(instancetype)init
{
    return [self initWithItemName:@"item"];
}

-(void) dealloc
{
    NSLog(@"Destroyed : %@", self);
}

@end

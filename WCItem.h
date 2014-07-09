//
//  WCItem.h
//  RandomItems
//
//  Created by Wenwen on 2014-07-03.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

@import Foundation;

@interface WCItem : NSObject

@property(nonatomic, copy) NSString * itemName;
@property(nonatomic, copy) NSString * serialNumber;
@property(nonatomic) int valueInDollars;
@property(nonatomic, readonly, strong) NSDate * dateCreated;
@property(nonatomic, strong) WCItem * containedItem;
@property(nonatomic, weak) WCItem * container;



+(instancetype) randomIdem;


-(instancetype)initWithItemName :(NSString *) name
                 valueInDollars : (int) value
                   serialNumber : (NSString *) serial;

-(instancetype)initWithItemName:(NSString *)name ;


@end

//
//  WCItemContainer.h
//  RandomItems
//
//  Created by Wenwen on 2014-07-08.
//  Copyright (c) 2014 com.wenwenchu. All rights reserved.
//

@import Foundation;
#import "WCItem.h"

@interface WCItemContainer : WCItem
{
    NSMutableArray * _subitems;
    NSString * _arrayName;
    int _valueInContainer;
}

-(void) addItem : (WCItem *) items;
-(instancetype) initWithName : (NSString *) name;

@end

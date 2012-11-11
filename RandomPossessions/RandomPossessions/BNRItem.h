//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Scott Turley on 9/25/12.
//  Copyright (c) 2012 Scott Turley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int       valueInDollars;
    NSDate   *dateCreated;
}

+(id)randomItem;

-(id)initWithItemName:(NSString *) name
       valueInDollars:(int)value
         serialNumber:(NSString *)sNumber;

-(id)initWithItemName:(NSString *) name
         serialNumber:(NSString *) sNumber;

-(void)setItemName:(NSString *) str;
-(NSString *)itemName;

-(void)setSerialNumber:(NSString *) str;
-(NSString *)serialNumber;

-(void)setValueInDollars:(int) i;
-(int)valueInDollars;

-(NSDate*)dateCreated;

-(NSString*) description;
@end

//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Scott Turley on 9/25/12.
//  Copyright (c) 2012 Scott Turley. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+(id)randomItem
{
    // Create an arry of three adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                                             @"Rusty",
                                                             @"Shiny", nil];
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                                                        @"Spork",
                                                        @"Mac", nil];
    //Get the index of a random adjective/noen from the list.
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    BNRItem *newItem =
    [[self alloc] initWithItemName:randomName
                    valueInDollars:randomValue
                      serialNumber:randomSerialNumber];
    
    return newItem;
    
}
-(void)setItemName:(NSString*)str;
{
    itemName = str;
}

-(NSString *)itemName
{
    return itemName;
}

-(void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

-(NSString *)serialNumber
{
    return serialNumber;
}

-(void)setValueInDollars:(int)i
{
    valueInDollars = i;
}

-(int)valueInDollars
{
    return valueInDollars;
}

-(NSDate *)dateCreated
{
    return dateCreated;
}

-(NSString *)description
{
    NSString *descriptionString =
        [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                itemName, serialNumber, valueInDollars, dateCreated];
    return descriptionString;
}

-(id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    //Call the superclass's designated initializer.
    self = [super init];
    
    if (self) {
        [self setItemName:name];
        [self setSerialNumber:sNumber];
        [self setValueInDollars:value];
        dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

-(id)initWithItemName:(NSString *) name serialNumber:(NSString *) sNumber
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:sNumber];
}

-(id)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}

-(id)init
{
    return [self initWithItemName:@"Item"
                   valueInDollars:0
                     serialNumber:@""];
}
@end

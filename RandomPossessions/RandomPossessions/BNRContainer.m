//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by Scott Turley on 11/10/12.
//  Copyright (c) 2012 Scott Turley. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer


-(id)init
{
    subItems = [[NSMutableArray alloc] init];
    
    return self;
}

-(void) addBNRItem: (BNRItem *) item
{
    if (item)
    {
        [subItems addObject:item];
    }
}

-(int)valueInDollars
{
    int localValue = 0;
    
    for (BNRItem *item in subItems) {
        localValue = localValue + [item valueInDollars];
    }
    
    return localValue;
}

-(NSString *)description
{
    int localValue = [self valueInDollars];
    
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
     itemName, serialNumber, localValue, dateCreated];
    
    for (BNRItem *item in subItems) {
        NSString *itemString = [[NSString alloc] initWithFormat:@"%@", [item description]];
        descriptionString = [descriptionString stringByAppendingString:itemString];
    }
        
    return descriptionString;
}

-(id)initWithItemName:(NSString *) name
         serialNumber:(NSString *)sNumber
{
    
    self = [super initWithItemName:name
                    valueInDollars:0
                      serialNumber:sNumber];
        
    return [self init];
}


@end

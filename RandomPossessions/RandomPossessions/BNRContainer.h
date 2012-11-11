//
//  BNRContainer.h
//  RandomPossessions
//
//  Created by Scott Turley on 11/10/12.
//  Copyright (c) 2012 Scott Turley. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray * subItems;
    
}

-(id)init;

-(void) addBNRItem: (BNRItem *) item;

-(NSString*) description;

-(id)initWithItemName:(NSString *) name
         serialNumber:(NSString *) sNumber;

-(int)valueInDollars;

@end

//
//  main.m
//  RandomPossessions
//
//  Created by Scott Turley on 9/22/12.
//  Copyright (c) 2012 Scott Turley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *p = [BNRItem randomItem];
            [items addObject:p];
        }
        
        BNRItem *p = [ [BNRItem alloc] initWithItemName:@"Scott"
                                           serialNumber:@"AAAA"];
        
        [items addObject:p];
        

        
        BNRContainer * container = [[BNRContainer alloc] initWithItemName:@"Test Container" serialNumber:@"AAA"];
                                     
        for (BNRItem *item in items) {
            [container addBNRItem:item];
        }
        
        NSLog(@"%@", [container description]);

        // NSLog(@"%@", item);
        //Destory the array pointed to by items.
        items = nil;
    }
    return 0;
}


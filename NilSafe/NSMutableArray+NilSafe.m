//
//  NSMutableArray+NilSafe.m
//  NilSafe
//
//  Created by Árni Jónsson on 24.4.2014.
//  Copyright (c) 2014 Árni Jónsson. All rights reserved.
//

#import "NSMutableArray+NilSafe.h"
#import <objc/runtime.h>

#import "SwizzleHelper.h"

@implementation NSMutableArray (NilSafe)

+ (void)load
{
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^
    {
        Class class = NSClassFromString(@"__NSArrayM");
        
        [SwizzleHelper swizzleClass:class
                   originalSelector:@selector(addObject:)
                    swizzleSelector:@selector(nilSafe_addObject:)];
        
        [SwizzleHelper swizzleClass:class
                   originalSelector:@selector(insertObject:atIndex:)
                    swizzleSelector:@selector(nilSafe_insertObject:atIndex:)];
        
        [SwizzleHelper swizzleClass:class
                   originalSelector:@selector(replaceObjectAtIndex:withObject:)
                    swizzleSelector:@selector(nilSafe_replaceObjectAtIndex:withObject:)];
        
        [SwizzleHelper swizzleClass:class
                   originalSelector:@selector(setObject:atIndexedSubscript:)
                    swizzleSelector:@selector(nilSafe_setObject:atIndexedSubscript:)];
    });
}

- (void)nilSafe_addObject:(id)object
{
    if(object)
    {
        [self nilSafe_addObject:object];
    }
}

- (void)nilSafe_insertObject:(id)anObject
                     atIndex:(NSUInteger)index
{
    if(anObject)
    {
        [self nilSafe_insertObject:anObject
                           atIndex:index];
    }
}

- (void)nilSafe_replaceObjectAtIndex:(NSUInteger)index
                          withObject:(id)anObject
{
    if(anObject)
    {
        [self nilSafe_replaceObjectAtIndex:index
                                withObject:anObject];
    }
}

- (void)nilSafe_setObject:(id)anObject
       atIndexedSubscript:(NSUInteger)index
{
    if(anObject)
    {
        [self nilSafe_setObject:anObject
             atIndexedSubscript:index];
    }
}

@end
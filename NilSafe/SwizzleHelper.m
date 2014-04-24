//
//  SwizzleHelper.m
//  NilSafe
//
//  Created by Árni Jónsson on 24.4.2014.
//  Copyright (c) 2014 Árni Jónsson. All rights reserved.
//

#import "SwizzleHelper.h"
#import <objc/runtime.h>

@implementation SwizzleHelper

+ (void)swizzleClass:(Class)theClass
    originalSelector:(SEL)theOriginalSelector
     swizzleSelector:(SEL)theSwizzleSelector
{
    Method originalMethod = class_getInstanceMethod(theClass, theOriginalSelector);
    Method swizzledMethod = class_getInstanceMethod(theClass, theSwizzleSelector);
    
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

@end

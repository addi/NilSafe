//
//  SwizzleHelper.h
//  NilSafe
//
//  Created by Árni Jónsson on 24.4.2014.
//  Copyright (c) 2014 Árni Jónsson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SwizzleHelper : NSObject

+ (void)swizzleClass:(Class)theClass
    originalSelector:(SEL)theOriginalSelector
     swizzleSelector:(SEL)theSwizzleSelector;

@end

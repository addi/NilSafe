//
//  NilSafeTests.m
//  NilSafeTests
//
//  Created by Árni Jónsson on 24.4.2014.
//  Copyright (c) 2014 Árni Jónsson. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface NilSafeTests : XCTestCase

@end

@implementation NilSafeTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end

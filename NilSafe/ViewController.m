//
//  ViewController.m
//  NilSafe
//
//  Created by Árni Jónsson on 24.4.2014.
//  Copyright (c) 2014 Árni Jónsson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *test = [NSMutableArray array];
    
    [test addObject:nil];
    
    [test insertObject:nil
               atIndex:0];
    
    [test replaceObjectAtIndex:0
                    withObject:nil];
    
    [test setObject:nil
 atIndexedSubscript:0];
    
    NSLog(@"lol");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

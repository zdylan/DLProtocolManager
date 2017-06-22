//
//  ViewController.m
//  DLProtocolManager
//
//  Created by dylan on 2017/6/22.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "ViewController.h"
#import "DLProtocolManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [DLProtocolManager registServiceProvide:self forProtocol:@protocol(TestProtocol)];
    id<TestProtocol> provide = [DLProtocolManager serviceProvideForProtocol:@protocol(TestProtocol)];
    
    NSLog(@"provide--------> %@", provide);
}


@end

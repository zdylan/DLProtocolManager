//
//  DLProtocolManager.m
//  DLProtocolManager
//
//  Created by dylan on 2017/6/22.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "DLProtocolManager.h"

@interface DLProtocolManager ()

@property (nonatomic, strong)NSMutableDictionary *serviceProvideSource;

@end

@implementation DLProtocolManager

+ (DLProtocolManager *)sharedInstance {
    static DLProtocolManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init {
    if (self = [super init]) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol {
    if (provide == nil || protocol == nil) {
        return;
    }
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol {
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}

@end

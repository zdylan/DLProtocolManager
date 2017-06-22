//
//  DLProtocolManager.h
//  DLProtocolManager
//
//  Created by dylan on 2017/6/22.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DLProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;
+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end

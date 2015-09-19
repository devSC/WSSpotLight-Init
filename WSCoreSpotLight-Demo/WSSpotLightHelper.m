//
//  WSSpotLightHelper.m
//  WSCoreSpotLight-Demo
//
//  Created by Wilson-Yuan on 15/9/19.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import "WSSpotLightHelper.h"
@import CoreSpotlight;
@import UIKit;

@interface WSSpotLightHelper ()

@property (nonatomic, strong) NSMutableArray *searchItems;

@end

@implementation WSSpotLightHelper

+ (instancetype)helper
{
    static dispatch_once_t onceToken;
    static WSSpotLightHelper *helper;
    dispatch_once(&onceToken, ^{
        helper = [[self alloc] init];
    });
    return helper;
}

- (NSMutableArray *)searchItems
{
    if (!_searchItems) {
        _searchItems = [NSMutableArray new];
    }
    return _searchItems;
}
@end

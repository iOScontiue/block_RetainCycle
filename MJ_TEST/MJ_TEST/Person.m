//
//  Person.m
//  MJ_TEST
//
//  Created by 卢育彪 on 2019/1/11.
//  Copyright © 2019年 luyubiao. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc
{
//    [super dealloc];
    NSLog(@"%s", __func__);
}

- (void) test6
{
    __weak typeof(self) weakSelf = self;
    self.block = ^{
        __strong typeof(weakSelf) strongSelf = weakSelf;
        NSLog(@"-------%d", strongSelf->_age);
    };
}

@end

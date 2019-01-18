//
//  Person.h
//  MJ_TEST
//
//  Created by 卢育彪 on 2019/1/11.
//  Copyright © 2019年 luyubiao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^MyBlock)(void);

@interface Person : NSObject

@property (nonatomic, assign) int age;
@property (nonatomic, copy) MyBlock block;

- (void) test6;

@end

NS_ASSUME_NONNULL_END

//
//  main.m
//  MJ_TEST
//
//  Created by 卢育彪 on 2019/1/2.
//  Copyright © 2019年 luyubiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "Person.h"

void test1()
{
    Person *per = [[Person alloc] init];
    per.age = 10;
    per.block = ^{
        NSLog(@"-------1");
    };
}

void test2()
{
    Person *per = [[Person alloc] init];
    per.age = 10;
    per.block = ^{
        NSLog(@"-------%d", per.age);
    };
}

void test3()
{
    Person *per = [[Person alloc] init];
    per.age = 10;
//    __weak Person *weakPer = per;
    __weak typeof(per) weakPer = per;
//    __unsafe_unretained Person *weakPer = per;
    per.block = ^{
        NSLog(@"-------%d", weakPer.age);
    };
}

void test4()
{
    __block Person *per = [[Person alloc] init];
    per.age = 10;
    per.block = ^{
        NSLog(@"-------%d", per.age);
        per = nil;
    };
    per.block();
}

void test5()
{
//    __unsafe_unretained Person *per = [[Person alloc] init];
    __block Person *per = [[Person alloc] init];
    per.age = 10;
    per.block = [^{
        NSLog(@"-------%d", per.age);
    } copy];
//    [per release];
    per = nil;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        test1();
//        test2();
//        test3();
//        test4();
//        test5();
        Person *per = [[Person alloc] init];
        [per test6];
    }
    
    NSLog(@"----");
    return 0;
}



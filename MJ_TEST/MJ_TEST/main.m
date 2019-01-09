//
//  main.m
//  MJ_TEST
//
//  Created by 卢育彪 on 2019/1/2.
//  Copyright © 2019年 luyubiao. All rights reserved.
//

#import <Foundation/Foundation.h>

struct __block_impl {
    void *isa;
    int Flags;
    int Reserved;
    void *FuncPtr;
};

struct __main_block_desc_0 {
    size_t reserved;
    size_t Block_size;
};

struct __main_block_impl_0 {
    struct __block_impl impl;
    struct __main_block_desc_0* Desc;
    int age;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        ^{
//            NSLog(@"This is a block");
//        }();
        
        int age = 10;
        void (^block)(int, int) = ^(int a, int b){
            NSLog(@"This is a block:%d", age);
            NSLog(@"a:%d b:%d", a, b);
        };
        
        struct __main_block_impl_0 *blockStruct = (__bridge struct __main_block_impl_0 *)block;
        
        //此处打断点
        block(20, 30);
    }
    return 0;
}

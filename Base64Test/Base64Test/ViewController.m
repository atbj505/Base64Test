//
//  ViewController.m
//  Base64Test
//
//  Created by 杨启晖 on 15/2/27.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "ViewController.h"
#import "Base64.h"

//Base64.h
//@interface NSData (Base64)
//
//+ (NSData *)dataWithBase64EncodedString:(NSString *)string;
//- (NSString *)base64EncodedStringWithWrapWidth:(NSUInteger)wrapWidth;
//- (NSString *)base64EncodedString;
//
//@end
//
//
//@interface NSString (Base64)
//
//+ (NSString *)stringWithBase64EncodedString:(NSString *)string;
//- (NSString *)base64EncodedStringWithWrapWidth:(NSUInteger)wrapWidth;
//- (NSString *)base64EncodedString;
//- (NSString *)base64DecodedString;
//- (NSData *)base64DecodedData;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //测试数据 (NSString/NSData类型)
    NSString *testString = @"In the iOS 7 and Mac OS 10.9 SDKs, Apple introduced new base64 methods on NSData that make it unnecessary to use a 3rd party base 64 decoding library. What's more, they exposed access to private base64 methods that are retrospectively available back as far as IOS 4 and Mac OS 6.";
    NSData *testData = [testString dataUsingEncoding:NSUTF8StringEncoding];
    
    //测试实例
    //NSData
    NSData *dataTestResult1 = [NSData dataWithBase64EncodedString:@"abc"];
    NSLog(@"%@",dataTestResult1);
    NSString *dataTestResult2 = [testData base64EncodedStringWithWrapWidth:5];
    NSLog(@"%@",dataTestResult2);
    NSString *dataTestResult3 = [testData base64EncodedString];
    NSLog(@"%@",dataTestResult3);
    //NSString
    NSString *stringTestResult1 = [NSString stringWithBase64EncodedString:@"abc"];
    NSLog(@"%@",stringTestResult1);
    NSString *stringTestResult2 = [testString base64EncodedStringWithWrapWidth:5];
    NSLog(@"%@",stringTestResult2);
    NSString *stringTestResult3 = [testString base64EncodedString];
    NSLog(@"%@",stringTestResult3);
    NSString *stringTestResult4 = [stringTestResult3 base64DecodedString];
    NSLog(@"%@",stringTestResult4);
    NSData *stringTestResult5 = [testString base64DecodedData];
    NSLog(@"%@",stringTestResult5);
}

@end

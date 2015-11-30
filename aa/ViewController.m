//
//  ViewController.m
//  aa
//
//  Created by sks on 15/11/29.
//  Copyright © 2015年 sks. All rights reserved.
//

#import "ViewController.h"
//#import "WXApi.h"
#import "GBWXPay/GBWXPayManager/GBWXPayManager.h"
#import "GBWXPayManagerConfig.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *wxPay = [UIButton buttonWithType:UIButtonTypeCustom];
    [wxPay setFrame:CGRectMake(100, 100, 100, 50)];
    [wxPay setTitle:@"wxPay" forState:UIControlStateNormal];
    [wxPay setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [wxPay addTarget:self action:@selector(pay:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:wxPay];
}

- (void)pay:(UIButton *)btn{
 
    //设置订单号、商品描述、金额
    [GBWXPayManager wxpayWithOrderID:@"2015-11-20abssd" orderTitle:@"test" amount:@"1"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    [UIAlertController alertControllerWithTitle:@"abc" message:@"aaa" preferredStyle:UIAlertControllerStyleAlert];
}

@end

//
//  ViewController.m
//  Runtime查看当前VC
//
//  Created by lwx on 16/10/25.
//  Copyright © 2016年 lwx. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+Swizzling.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"进入到VC的WillWillAppear");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

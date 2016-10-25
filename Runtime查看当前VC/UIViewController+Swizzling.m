//
//  UIViewController+Swizzling.m
//  Runtime查看当前VC
//
//  Created by lwx on 16/10/25.
//  Copyright © 2016年 lwx. All rights reserved.
//

#import "UIViewController+Swizzling.h"

#import <objc/runtime.h>

@implementation UIViewController (Swizzling)


+ (void)load {
    
    
#ifdef DEBUG
    
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method viewWillAppear = class_getInstanceMethod(self, @selector(viewWillAppear:));
        
        Method logViewWillAppear = class_getInstanceMethod(self, @selector(logViewWillAppear));
        
        method_exchangeImplementations(viewWillAppear, logViewWillAppear);
    });
    
  

#endif
    

    
    
}


- (void)logViewWillAppear {
    
    NSString *className = NSStringFromClass([self class]);
    
    //过滤不需要打印的ViewC
    if (![className hasPrefix:@"UI"]) {
        NSLog(@"%@ will appear",className);
    }
    
    //调用原来的viewWillAppear
    [self logViewWillAppear];
    
}



@end

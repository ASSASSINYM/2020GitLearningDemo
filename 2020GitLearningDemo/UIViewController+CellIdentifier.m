//
//  UIViewController+CellIdentifier.m
//  ApplicationDemo
//
//  Created by ASSASSIN on 2020/12/14.
//

#import "UIViewController+CellIdentifier.h"
#import <objc/runtime.h>


@interface UIViewController ()

@end

@implementation UIViewController (CellIdentifier)

-(NSString *)cellIdentifier {
    return objc_getAssociatedObject(self, @selector(cellIdentifier));
}

-(void)setCellIdentifier:(NSString *)cellIdentifier {
    objc_setAssociatedObject(self, @selector(cellIdentifier), cellIdentifier, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end

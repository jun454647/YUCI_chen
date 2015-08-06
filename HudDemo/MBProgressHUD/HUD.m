//
//  HUD.m
//  HudDemo
//
//  Created by chen on 15/7/27.
//  Copyright (c) 2015年 chen. All rights reserved.
//

#import "HUD.h"

#define Default_delay 2
static MBProgressHUD *_HUD = nil;
@implementation HUD

+ (void)showHUD:(UIView*)view
{
    [HUD showHUD:view content:nil];
}

+ (void)showHUD:(UIView*)view xOffset:(CGFloat)xOffset
{
    [HUD showHUD:view content:nil xOffset:xOffset];
}

+ (void)showHUD:(UIView*)view yOffset:(CGFloat)yOffset
{
    [HUD showHUD:view content:nil yOffset:yOffset];
}

+ (void)showHUD:(UIView*)view content:(NSString*)content
{
    [HUD showHUD:view content:content xOffset:0];
}

+ (void)showHUD:(UIView*)view content:(NSString*)content xOffset:(CGFloat)xOffset
{
    [HUD showHUD:view content:content xOffset:xOffset yOffset:0];
}

+ (void)showHUD:(UIView*)view content:(NSString*)content yOffset:(CGFloat)yOffset
{
    [HUD showHUD:view content:content xOffset:0 yOffset:yOffset];
}

+ (void)showHUD:(UIView*)view content:(NSString*)content xOffset:(CGFloat)xOffset yOffset:(CGFloat)yOffset
{
    [HUD hideHUD];
    //初始化
    _HUD = [[MBProgressHUD alloc] initWithView:view];
    [view addSubview:_HUD];
    
    //设置条件
    if (content)
    {
        _HUD.mode = MBProgressHUDModeText;
        _HUD.labelText = content;
    }
    if (xOffset)
    {
        _HUD.xOffset = xOffset;
    }
    
    if (yOffset) {
        _HUD.yOffset = yOffset;
    }
    
    [_HUD show:YES];
    [_HUD hide:YES afterDelay:Default_delay];
}

+ (void)showHUD_Loading:(UIView*)view
{
    [HUD showHUD_Loading:view dimBackground:NO];
}

+ (void)showHUD_Loading:(UIView*)view delay:(NSTimeInterval)delay
{
    [HUD showHUD_Loading:view delay:delay dimBackground:NO];
}

+ (void)showHUD_Loading:(UIView*)view dimBackground:(BOOL)dimBackground
{
    [HUD showHUD_Loading:view delay:Default_delay dimBackground:dimBackground];
}

+ (void)showHUD_Loading:(UIView*)view delay:(NSTimeInterval)delay dimBackground:(BOOL)dimBackground
{
    [HUD hideHUD];
    
    _HUD = [[MBProgressHUD alloc] initWithView:view];
    _HUD.animationType = MBProgressHUDAnimationFade;
    _HUD.labelText = @"Loding...";
    _HUD.dimBackground = dimBackground;
    [view addSubview:_HUD];
    [_HUD show:YES];
    [_HUD hide:YES afterDelay:delay];
}

+ (void)hideHUD
{
    if (_HUD) {
        [_HUD removeFromSuperview];
    }
}

@end

//
//  HUD.h
//  HudDemo
//
//  Created by chen on 15/7/27.
//  Copyright (c) 2015年 chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"

@interface HUD : NSObject<MBProgressHUDDelegate>

/*
 *self      显示加载或提示view
 *view      是父试图
 *content   要提示的内容
 */

+ (void)showHUD:(UIView*)view content:(NSString*)content;
+ (void)showHUD:(UIView*)view;

+ (void)showHUD_Loading:(UIView*)view;
+ (void)showHUD_Loading:(UIView*)view dimBackground:(BOOL)dimBackground;

/*
 *self      显示加载或提示view
 *view      是父试图
 *content   要提示的内容
 *xOffset   用来设置 X 轴方向的偏移量
 *yOffset   用来设置 Y 轴方向的偏移量
 */
+ (void)showHUD:(UIView*)view xOffset:(CGFloat)xOffset;
+ (void)showHUD:(UIView*)view yOffset:(CGFloat)yOffset;
+ (void)showHUD:(UIView*)view content:(NSString*)content xOffset:(CGFloat)xOffset;
+ (void)showHUD:(UIView*)view content:(NSString*)content yOffset:(CGFloat)yOffset;
+ (void)showHUD:(UIView*)view content:(NSString*)content xOffset:(CGFloat)xOffset yOffset:(CGFloat)yOffset;

+ (void)showHUD_Loading:(UIView*)view delay:(NSTimeInterval)delay;
+ (void)showHUD_Loading:(UIView*)view delay:(NSTimeInterval)delay dimBackground:(BOOL)dimBackground;

@end

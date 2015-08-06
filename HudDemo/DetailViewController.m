//
//  DetailViewController.m
//  HudDemo
//
//  Created by chen on 15/7/27.
//  Copyright (c) 2015年 chen. All rights reserved.
//

#import "DetailViewController.h"
#import "HUD.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    UIView *image = [[UIView alloc] initWithFrame:CGRectMake(10, 100, 200, 200)];
    image.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:image];
    
    [HUD showHUD:self.view content:@"美女~" xOffset:0 yOffset:CGRectGetHeight(self.view.frame)/2-50];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

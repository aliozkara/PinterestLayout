//
//  MainViewController.m
//  PinterestLayoutDemo
//
//  Created by Ali Can OZKARA on 4.01.2018.
//  Copyright © 2018 Ali Can OZKARA. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.mainModel = [[MainModel alloc] init];
    self.mainView.controller = self;
    self.mainView.delegate = self;
    self.mainView.view = self.view;
    
    [self.mainView initView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MainDelegate

-(void)dismissController{
    
}

@end

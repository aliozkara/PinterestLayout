//
//  MainView.h
//  PinterestLayoutDemo
//
//  Created by Ali Can OZKARA on 4.01.2018.
//  Copyright © 2018 Ali Can OZKARA. All rights reserved.
//

#include <stdlib.h>

#import <UIKit/UIKit.h>
#import "MainDelegate.h"
#import "MainCell.h"
#import "PinterestLayout.h"

@interface MainView : UIView <UICollectionViewDataSource, UICollectionViewDelegate, PinterestLayoutDelegate>

@property (nonatomic) id <MainDelegate> delegate;
@property (nonatomic, weak) UIView *view;
@property (nonatomic, weak) UIViewController *controller;

@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;

-(void)initView;

@end

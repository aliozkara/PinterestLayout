//
//  MainViewController.h
//  PinterestLayoutDemo
//
//  Created by Ali Can OZKARA on 4.01.2018.
//  Copyright © 2018 Ali Can OZKARA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainView.h"
#import "MainModel.h"

@interface MainViewController : UIViewController <MainDelegate>

@property (nonatomic, strong) IBOutlet MainView *mainView;
@property (nonatomic, strong) MainModel *mainModel;


@end

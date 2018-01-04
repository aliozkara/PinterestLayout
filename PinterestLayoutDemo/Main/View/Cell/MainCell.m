//
//  MainCell.m
//  PinterestLayoutDemo
//
//  Created by Ali Can OZKARA on 4.01.2018.
//  Copyright © 2018 Ali Can OZKARA. All rights reserved.
//

#import "MainCell.h"

@implementation MainCell

-(void)awakeFromNib{
    [super awakeFromNib];
    
    self.wrapper.layer.cornerRadius = 6;
    self.wrapper.layer.masksToBounds = YES;

}

@end

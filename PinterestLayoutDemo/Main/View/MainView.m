//
//  MainView.m
//  PinterestLayoutDemo
//
//  Created by Ali Can OZKARA on 4.01.2018.
//  Copyright © 2018 Ali Can OZKARA. All rights reserved.
//



#import "MainView.h"

#define CELL_COUNT 5
#define CELL_IDENTIFIER @"cell"
#define RAND(min, max) (min + arc4random_uniform(max - min + 1))

@implementation MainView


-(void)initView{
    
    PinterestLayout *layout = (PinterestLayout *)self.collectionView.collectionViewLayout;
    layout.delegate = self;
}

#pragma mark - UICollectionViewDelegate

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return CELL_COUNT;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
 
    MainCell *cell = (MainCell *)[collectionView dequeueReusableCellWithReuseIdentifier:CELL_IDENTIFIER forIndexPath:indexPath];
    cell.image.backgroundColor = [UIColor colorWithRed:RAND(200, 250)/255.f green:RAND(200, 250)/255.f blue:RAND(200, 250)/255.f alpha:1];
    
    return cell;
    
}

#pragma mark - PinterestLayoutDelegate

-(NSInteger)cellPadding:(UICollectionView *)padding {
    return 6;
}

-(NSInteger)numberOfColumns:(UICollectionView *)column{
    return 2;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView heightForPhotoAtIndexPath:(NSIndexPath *)indexPath{
    return 100.0f *RAND( 1, 5);
}


@end

//
//  PinterestLayout.h
//
//  Created by alican özkara on 03/01/2018.
//  Copyright © 2018 ali can özkara. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol PinterestLayoutDelegate <NSObject>

- (CGFloat)collectionView:(UICollectionView *)collectionView heightForPhotoAtIndexPath:(NSIndexPath *)indexPath;
- (NSInteger)numberOfColumns:(UICollectionView *)column;
- (NSInteger)cellPadding:(UICollectionView *)padding;

@end

@interface PinterestLayout : UICollectionViewLayout

@property (nonatomic) id <PinterestLayoutDelegate> delegate;

@property (nonatomic, assign) NSInteger numberOfColumns;
@property (nonatomic, assign) NSInteger cellPadding;

@property (nonatomic, strong) NSMutableArray<UICollectionViewLayoutAttributes *> *cache;

@property (nonatomic, assign) CGFloat contentHeight;


@end


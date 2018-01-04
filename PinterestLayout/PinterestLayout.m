//
//  StaggeredLayout.m
//  Doktorsitesi
//
//  Created by alican özkara on 03/01/2018.
//  Copyright © 2018 ali can özkara. All rights reserved.
//

#import "PinterestLayout.h"


@implementation PinterestLayout


-(CGFloat)contentWidth{
    UIEdgeInsets insets = self.collectionView.contentInset;
    return self.collectionView.bounds.size.width - (insets.left + insets.right);
}

-(CGSize)collectionViewContentSize{
    return CGSizeMake([self contentWidth], self.contentHeight);
}

-(void)prepareLayout{
    
    self.cache = [NSMutableArray new];
    self.numberOfColumns = [self.delegate numberOfColumns:self.collectionView];
    self.cellPadding = [self.delegate cellPadding:self.collectionView];
    self.contentHeight = 0;
    NSInteger column = 0;
    
    CGFloat columnWidth = [self contentWidth] / self.numberOfColumns;
    NSMutableArray<NSNumber *> *xOffset = [NSMutableArray new];
    NSMutableArray<NSNumber *> *yOffset = [NSMutableArray new];
    
    for(int i = 0; i<self.numberOfColumns; i++){
        [xOffset addObject:[NSNumber numberWithFloat:columnWidth * i]];
        [yOffset addObject:[NSNumber numberWithInt:i]];
    }
    
    for(int i = 0; i<[self.collectionView numberOfItemsInSection:0]; i++){
        
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:i inSection:0];
        
        CGFloat photoHeight = [self.delegate collectionView:self.collectionView heightForPhotoAtIndexPath:indexPath];
        CGFloat height = self.cellPadding * 2 + photoHeight;
        CGRect frame = CGRectMake([[xOffset objectAtIndex:column] floatValue], [[yOffset objectAtIndex:column] floatValue], columnWidth, height);
        frame = CGRectInset(frame, self.cellPadding, self.cellPadding);
        
        UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
        attributes.frame = frame;
        
        [self.cache addObject:attributes];
        
        self.contentHeight = MAX(self.contentHeight, CGRectGetMaxY(frame));
        
        [yOffset replaceObjectAtIndex:column withObject:[NSNumber numberWithFloat:[[yOffset objectAtIndex:column] floatValue] + height]];
        column = column < (self.numberOfColumns - 1) ? (column + 1) : 0;
        
    }
    
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    
    NSMutableArray<UICollectionViewLayoutAttributes *> *visibleLayoutAttributes = [NSMutableArray new];
    
    for(int i = 0; i< [self.cache count]; i++) {
        
        if (CGRectIntersectsRect([self.cache objectAtIndex:i].frame, rect)){
            [visibleLayoutAttributes addObject:[self.cache objectAtIndex:i]];
        }
    }
    
    return [visibleLayoutAttributes copy];
}

-(UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath{
    return [self.cache objectAtIndex:indexPath.row];
}

@end

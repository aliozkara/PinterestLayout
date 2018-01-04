# PinterestLayout



ScreenShots
--------

![](https://cdn.pbrd.co/images/H1pjT38.png)


How to install
--------

* Manual

  - Copy PinterestLayout.h and PinterestLayout.m to your project.


How to Use
--------

Add ```<PinterestLayoutDelegate>``` to your Controller and init

  ``` 
    PinterestLayout *cl = [[PinterestLayout alloc] init];
    yourCollectionView.collectionViewLayout = cl;
    cl.delegate = self;
```

Call the override methods

  ``` 
    -(NSInteger)cellPadding:(UICollectionView *)padding{
        return 6;
    }

    -(NSInteger)numberOfColumns:(UICollectionView *)column{
        return 2;
    }

    -(CGFloat)collectionView:(UICollectionView *)collectionView heightForPhotoAtIndexPath:(NSIndexPath *)indexPath{
        return 100.0f;
    }
```

See the demo app 





License
--------
PinterestLayout is available under the Apache 2.0 license. See the LICENSE file for more info.

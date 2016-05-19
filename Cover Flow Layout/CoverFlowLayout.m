//
//  CoverFlowLayout.m
//  Cover Flow Layout
//
//  Created by Anton Moiseev on 2016-05-19.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "CoverFlowLayout.h"

@implementation CoverFlowLayout

- (void)prepareLayout {
    
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    self.itemSize = CGSizeMake(self.collectionView.bounds.size.width/3, self.collectionView.bounds.size.height*0.5);
    
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    
    NSArray *allAttributes = [super layoutAttributesForElementsInRect:rect];
    
    CGRect visibleRegion;
    visibleRegion.origin = self.collectionView.contentOffset;
    NSLog(@"%f", visibleRegion.origin.x);
    visibleRegion.size = self.collectionView.bounds.size;
    
    // Modify the layout attributes as needed here
    
    
    return allAttributes;
}

@end

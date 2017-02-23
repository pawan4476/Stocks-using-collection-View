//
//  CollectionViewCell.h
//  stocksCollectionView
//
//  Created by Nagam Pawan on 11/12/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UILabel *openValueLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailsLabel;

@end

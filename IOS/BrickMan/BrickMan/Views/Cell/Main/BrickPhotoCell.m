//
//  BrickPhotoCell.m
//  BrickMan
//
//  Created by TZ on 16/7/22.
//  Copyright © 2016年 BrickMan. All rights reserved.
//

#import "BrickPhotoCell.h"

@interface BrickPhotoCell()
@property (strong, nonatomic) UIImageView *photoImgView;

@end

@implementation BrickPhotoCell

- (void)setPhotoImage:(UIImage *)photoImage {
    if (!_photoImgView) {
        _photoImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kBrickPhotoCellWidth_Three, kBrickPhotoCellWidth_Three)];
        _photoImgView.contentMode = UIViewContentModeScaleAspectFill;
        _photoImgView.clipsToBounds = YES;
        [self.contentView addSubview:_photoImgView];
    }
    
    if (_photoImage != photoImage) {
        _photoImage = photoImage;
        _photoImgView.image = photoImage;
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.photoImgView.size = CGSizeMake(self.contentView.width, self.contentView.height);
}

+ (CGFloat)cellHeightWithType:(BrickPhotoCellType)type {
    CGFloat width = 0;
    if (type == BrickPhotoCellType_One) {
        width = kBrickPhotoCellHeight_One;
    }else if (type == BrickPhotoCellType_Two) {
        width = kBrickPhotoCellHeight_Two;
    }else if (type == BrickPhotoCellType_Three) {
        width = kBrickPhotoCellWidth_Three;
    }
    return kBrickPhotoCellWidth_Three;
}

@end

//
//  LEDSettingCommonTableViewCell.m
//  LEDLobster
//
//  Created by liuzuopeng01 on 15/7/7.
//  Copyright (c) 2015年 liuzuopeng01. All rights reserved.
//

#import "LEDSettingCommonTableViewCell.h"

@interface LEDSettingCommonTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *titleImageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightArrowImageView;
@end
@implementation LEDSettingCommonTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

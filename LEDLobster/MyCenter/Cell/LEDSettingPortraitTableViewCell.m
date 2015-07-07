//
//  LEDSettingPortraitTableViewCell.m
//  LEDLobster
//
//  Created by liuzuopeng01 on 15/7/7.
//  Copyright (c) 2015年 liuzuopeng01. All rights reserved.
//

#import "LEDSettingPortraitTableViewCell.h"

@interface LEDSettingPortraitTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *portraitImageView;
@property (weak, nonatomic) IBOutlet UILabel *nickNameLabel;
@end

@implementation LEDSettingPortraitTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

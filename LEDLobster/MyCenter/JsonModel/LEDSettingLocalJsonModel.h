//
//  LEDSettingLocalJsonModel.h
//  LEDLobster
//
//  Created by liuzuopeng01 on 15/7/7.
//  Copyright (c) 2015年 liuzuopeng01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LEDSettingResponseJsonModel.h"


@interface LEDSettingLocalJsonModel : LEDSettingResponseJsonModel

@property(nonatomic, strong) NSString *profileString;
@property(nonatomic, strong) NSString *helperString;
@property(nonatomic, strong) NSString *aboutString;

@end

//
//  LEDSettingResponseJsonModel.h
//  LEDLobster
//
//  Created by liuzuopeng01 on 15/7/7.
//  Copyright (c) 2015年 liuzuopeng01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LEDBaseResponseJsonModel.h"


@interface LEDSettingResponseJsonModel : LEDBaseResponseJsonModel

@property(nonatomic, strong) NSString *profileString;
@property(nonatomic, strong) NSString *nickNameString;

@end

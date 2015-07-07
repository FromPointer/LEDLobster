//
//  LEDSettingViewController.h
//  LEDLobster
//
//  Created by liuzuopeng01 on 15/7/7.
//  Copyright (c) 2015年 liuzuopeng01. All rights reserved.
//

#import <UIKit/UIKit.h>


/**
 * @Explain: cell type
 */
typedef enum LEDSettingCellType : NSUInteger {
    kLEDSettingCellTypeForPortrait = 0,
    kLEDSettingCellTypeForProfile  = 1,
    kLEDSettingCellTypeForHelper   = 2,
    kLEDSettingCellTypeForAbout    = 3,
    kLEDSettingCellTypeCount       = 4,
} LEDSettingCellType;

@interface LEDSettingViewController : UIViewController

@end

//
//  LEDSettingViewController.m
//  LEDLobster
//
//  Created by liuzuopeng01 on 15/7/7.
//  Copyright (c) 2015年 liuzuopeng01. All rights reserved.
//

#import "LEDSettingViewController.h"
#import "LEDSettingLocalJsonModel.h"
#import "LEDSettingRequestJsonModel.h"
#import "LEDSettingResponseJsonModel.h"

@interface LEDSettingViewController ()
<
UITableViewDelegate,
UITableViewDataSource
>
// control
@property (weak, nonatomic) IBOutlet UITableView *tableView;

// base data
@property (nonatomic, strong) LEDSettingLocalJsonModel *sLocalJsonModel;
@property (nonatomic, assign) LEDSettingCellType        settingCellType;

@end

@implementation LEDSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self requestForNetworkCache];
    [self requestForNetworkResponse];
    
    // Do any additional setup after loading the view.
    [self setupTableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - init

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self initBaseData];
    }
    return self;
}


- (void)setupTableView {
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.scrollEnabled = NO;
    self.tableView.tableFooterView = [[UIView alloc] init];
}

- (void)initBaseData {
    self.settingCellType = kLEDSettingCellTypeForPortrait;
    self.sLocalJsonModel = [[LEDSettingLocalJsonModel alloc] init];
    
    for (NSUInteger i = 0; i < kLEDSettingCellTypeCount; i++) {
        switch (i) {
            case kLEDSettingCellTypeForPortrait:
                _sLocalJsonModel.portraitString = @"liuzp";
                break;
            case kLEDSettingCellTypeForProfile:
                _sLocalJsonModel.profileString = @"个人资料";
                break;
                
            case kLEDSettingCellTypeForHelper:
                _sLocalJsonModel.helperString = @"帮助";
                break;
                
            case kLEDSettingCellTypeForAbout:
                _sLocalJsonModel.aboutString = @"关于";
                break;
                
            default:
                break;
        }
    }
}


#pragma mark - request and response

- (void)requestForNetworkCache {
    
}

- (void)requestForNetworkResponse {
    
}


- (void)responseForSettingWithJsonModel:(LEDSettingResponseJsonModel *)jsonModel
                            isFromCache:(BOOL)isFromCache {
    [self updateVisibleViewsWithJsonModel:jsonModel];
}


- (void)updateVisibleViewsWithJsonModel:(LEDSettingResponseJsonModel *)jsonModel {
    self.sLocalJsonModel = (LEDSettingLocalJsonModel *)jsonModel;
    
    [self.tableView reloadData];
}


#pragma mark - delegate for tableView


#pragma mark - data source for tableView

- (NSInteger)numberOfSectionsInTableView:(nonnull UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return kLEDSettingCellTypeCount;
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    self.settingCellType = (LEDSettingCellType)indexPath.row;
    
    UITableViewCell *cell = nil;
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

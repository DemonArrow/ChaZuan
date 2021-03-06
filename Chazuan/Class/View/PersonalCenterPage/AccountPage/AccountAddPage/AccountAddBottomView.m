//
//  AccountAddBottomView.m
//  Chazuan
//
//  Created by BecksZ on 2019/7/18.
//  Copyright © 2019 BecksZeng. All rights reserved.
//

#import "AccountAddBottomView.h"

@interface AccountAddBottomView ()

@property (nonatomic, readwrite, strong) ZGButton *resetBtn;
@property (nonatomic, readwrite, strong) ZGButton *addBtn;

@end

@implementation AccountAddBottomView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self _setup];
        [self _setupSubviews];
        [self _setupSubviewsConstraint];
    }
    return self;
}

- (void)_setup {
    self.backgroundColor = kHexColor(@"#EDF1F2");
    self.layer.shadowColor = kHexColor(@"#C0C0C0").CGColor;
    self.layer.shadowOpacity = 0.6;
    self.layer.shadowRadius = 3;
    self.layer.shadowOffset = CGSizeMake(0, -3);
}

- (void)_setupSubviews {
    ZGButton *resetBtn = [ZGButton buttonWithType:UIButtonTypeCustom];
    resetBtn.layer.cornerRadius = 2;
    [resetBtn setBackgroundColor:UIColor.whiteColor];
    [resetBtn setTitle:@"重置" forState:UIControlStateNormal];
    [resetBtn setTitleColor:kHexColor(@"#1C2B36") forState:UIControlStateNormal];
    [resetBtn.titleLabel setFont:kFont(16)];
    self.resetBtn = resetBtn;
    [self addSubview:resetBtn];
    
    ZGButton *addBtn = [ZGButton buttonWithType:UIButtonTypeCustom];
    addBtn.layer.cornerRadius = 2;
    [addBtn setBackgroundColor:kHexColor(@"#3882FF")];
    [addBtn setTitle:@"添加" forState:UIControlStateNormal];
    [addBtn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    [addBtn.titleLabel setFont:kFont(16)];
    self.addBtn = addBtn;
    [self addSubview:addBtn];
}

- (void)_setupSubviewsConstraint {
    [self.resetBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(ZGCConvertToPx(10));
        make.top.mas_equalTo(self).offset(ZGCConvertToPx(3.5));
        make.bottom.mas_equalTo(self.mas_bottom).offset(ZGCConvertToPx(-3.5)-kBottomSpace);
    }];
    [self.addBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.resetBtn.mas_right).offset(ZGCConvertToPx(30));
        make.right.mas_equalTo(self.mas_right).offset(ZGCConvertToPx(-10));
        make.top.mas_equalTo(self).offset(ZGCConvertToPx(3.5));
        make.bottom.mas_equalTo(self.mas_bottom).offset(ZGCConvertToPx(-3.5)-kBottomSpace);
        make.width.mas_equalTo(self.resetBtn).multipliedBy(2.25);
    }];
}

@end

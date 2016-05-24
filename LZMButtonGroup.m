//
//  LZMGourp.m
//  LZMGroupButton
//
//  Created by 李泽明 on 16/5/21.
//  Copyright © 2016年 lizeming. All rights reserved.
//

#import "LZMButtonGroup.h"


@class LZMGroupButton;
@interface LZMButtonGroup ()

@property (strong, nonatomic) NSMutableArray *btnArrM;
@property (weak, nonatomic) UIButton *selectedBtn;
@property (copy, nonatomic) myBlock normalBlock;
@property (copy, nonatomic) myBlock selectedBlock;
@end
@implementation LZMButtonGroup

- (void)addButton:(UIButton *)btn{
    [self.btnArrM addObject:btn];
    [btn addTarget:self action:@selector(clickbtn:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clickbtn:(UIButton *)btn{
    self.selectedBtn.selected = NO;
    if(self.normalBlock) self.normalBlock(self.selectedBtn);
    self.selectedBtn = btn;
    self.selectedBtn.selected = YES;
    if(self.selectedBlock) self.selectedBlock(self.selectedBtn);
}

- (void)normalStatusByUsingBlock:(myBlock)block{
    self.normalBlock = block;
}

- (void)selectedStatusByUsingBlock:(myBlock)block{
    self.selectedBlock = block;
}

- (UIButton *)buttonAtIndex:(NSInteger)index{
    return [self.btnArrM objectAtIndex:index];
}

- (NSInteger)indexOfButton:(UIButton *)button{
    return [self.btnArrM indexOfObject:button];
}

- (NSMutableArray *)btnArrM{
    if(!_btnArrM){
        _btnArrM = [NSMutableArray array];
    }
    return _btnArrM;
}

@end

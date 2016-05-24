//
//  LZMGourp.h
//  LZMGroupButton
//
//  Created by 李泽明 on 16/5/21.
//  Copyright © 2016年 lizeming. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^myBlock)(UIButton *button);
@interface LZMButtonGroup : NSObject
- (void)addButton:(UIButton *)btn;
- (void)normalStatusByUsingBlock:(myBlock)block;
- (void)selectedStatusByUsingBlock:(myBlock)block;
- (UIButton *)buttonAtIndex:(NSInteger)index;
- (NSInteger)indexOfButton:(UIButton *)button;
@end

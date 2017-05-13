//
//  ZHTagsView.m
//  sss
//
//  Created by xyj on 17/5/11.
//  Copyright © 2017年 xyj. All rights reserved.
//

#import "ZHTagsView.h"
#import "UIImage+ZHSize.h"
static const CGFloat margin = 10;
#define SELF_w  self.frame.size.width


@implementation ZHTagsView

-(void)setDataArray:(NSArray *)dataArray{
    _dataArray = dataArray;
    CGFloat xHeight = 0;
    NSMutableArray *signArray = [NSMutableArray array];
    for (int i = 0 ; i<100; i++) {
        CGFloat rowWith2 = 0;
        [signArray addObject:@(rowWith2)];
    }
    NSInteger tag = 0;
    for (int i = 0 ; i < self.dataArray.count ; i++ ) {
        NSString *str = self.dataArray[i];
        //1.创建添加按钮
        UIButton *btn = [self createBtnWithTitle:str andFontSize:13];
        //2.计算frame
        CGSize temsize = [self caculateSizeForButtonWithTitle:str andFontSize:13];
        CGFloat btnX = 0;
        CGFloat btnY = 0;
        NSNumber *num = signArray[tag];
        CGFloat rowWith2 = [num doubleValue];
        rowWith2 = rowWith2 + (margin + temsize.width);
        if( rowWith2 < SELF_w){
            signArray[tag] = @(rowWith2);
            btnY = (temsize.height + margin ) *tag;
            btnX = rowWith2 - temsize.width;
        }else{
            tag = tag +1;
            NSNumber *num = signArray[tag];
            CGFloat rowWith3 = [num doubleValue];
            rowWith3 = rowWith3 + (margin + temsize.width);
            signArray[tag] = @(rowWith3);
            btnY = (temsize.height + margin ) *tag;
            btnX = rowWith3 - temsize.width;
        }
        btn.frame = CGRectMake(btnX, btnY, temsize.width, temsize.height);
        if (i==self.dataArray.count-1) {
            xHeight = btnY + temsize.height;
        }
    }
    
    CGRect xframe = self.frame;
    self.frame = CGRectMake(xframe.origin.x,xframe.origin.y ,xframe.size.width, xHeight);
    [self layoutSubviews];
}


-(CGFloat)viewForHeight{
    return self.frame.size.height;
}
-(UIButton *)createBtnWithTitle:(NSString *)title andFontSize:(CGFloat)size{
    UIButton *button  = [[UIButton alloc] init];
    button.contentEdgeInsets =UIEdgeInsetsMake(7, 7, 7, 7);
    button.titleLabel.font = [UIFont systemFontOfSize:size];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage resizedImage:@"zhtb-b"] forState:UIControlStateNormal];
    [button sizeToFit];
    [self addSubview:button];
    return button;
}

-(CGSize )caculateSizeForButtonWithTitle:(NSString *)title andFontSize:(CGFloat)size {
    CGSize btnSize = CGSizeZero;
    //计算文字宽度
    CGSize titleSize = [title sizeWithFont:[UIFont systemFontOfSize:size] constrainedToSize:CGSizeMake(MAXFLOAT, 20)];
    //实际宽度= 文字宽度 + 2*内边距
    CGFloat width = titleSize.width +14;
    CGFloat height = 20;
    //最终宽高
    btnSize = CGSizeMake(width, height);
    
    return btnSize;
}

@end

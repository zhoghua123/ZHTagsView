//
//  ViewController.m
//  sss
//
//  Created by xyj on 17/5/11.
//  Copyright © 2017年 xyj. All rights reserved.
//

#import "ViewController.h"
#import "ZHTagsView.h"
@interface ViewController ()
@property (nonatomic,strong) ZHTagsView *tasView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZHTagsView * tagsView = [[ZHTagsView alloc] init];
    tagsView.backgroundColor = [UIColor yellowColor];
    tagsView.frame = CGRectMake(0, 100,300,0);
    [self.view  addSubview:tagsView];
    self.tasView = tagsView;
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.tasView.dataArray = @[
                               @"索拉卡地方;啊;浪费萨拉是",
                               @"方;啊;浪费萨拉是",
                               @"方;啊;浪费萨拉是",
                               @"方;啊拉是",
                               @"方;啊;浪费萨拉是",
                               @"方;啊是",
                               @"方;啊;浪费萨拉是",
                               @"方;拉是",
                               @"方;费萨拉是"
                               ,
                               @"方;啊拉是",
                               @"方;啊;浪费萨拉是",
                               @"方;啊是",
                               @"方;啊;浪费萨拉是",
                               @"方;拉是",
                               @"方;费萨拉是"
                               ,
                               @"方;啊拉是",
                               @"方;啊;浪费萨拉是",
                               @"方;啊是",
                               @"方;啊;浪费萨拉是",
                               @"方;拉是",
                               @"方;费萨拉是"
                              
                               ];
   
    NSLog(@"%f",[self.tasView viewForHeight]);
}


@end

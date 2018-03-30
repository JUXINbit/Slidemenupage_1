//
//  QYTitleInCombine.m
//  Slidemenupage_1
//
//  Created by 鞠鑫 on 2018/3/12.
//  Copyright © 2018年 鞠鑫. All rights reserved.
//

#import "QYTitleInCombine.h"

@implementation QYTitleInCombine
- (instancetype)init{
    self = [super init];
    
    self.dataInTitleArray =  [[NSMutableArray alloc]init];
    self.dataInTitleArray = [NSMutableArray arrayWithObjects:
                            [[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"综艺",@"热血街舞",nil],
                            [[NSArray alloc]initWithObjects:@"动漫",@"银魂",nil],[[NSArray alloc]initWithObjects:@"电影",@"敢死队",nil],
                            [[NSArray alloc]initWithObjects:@"娱乐",@"娱乐圈",nil],[[NSArray alloc]initWithObjects:@"咨询",@"感知世界的温度",nil],
                            [[NSArray alloc]initWithObjects:@"少儿",@"小猪佩奇",nil],[[NSArray alloc]initWithObjects:@"音乐",@"因你而来",nil],
                            [[NSArray alloc]initWithObjects:@"体育",@"让运动简单",nil],[[NSArray alloc]initWithObjects:@"科技",@"Apple",nil],
                            [[NSArray alloc]initWithObjects:@"骑车",@"东风破",nil],[[NSArray alloc]initWithObjects:@"游戏",@"这就是游戏",nil],
                            [[NSArray alloc]initWithObjects:@"直播",@"精彩就在这里",nil],[[NSArray alloc]initWithObjects:@"亲子",@"孕育",nil],
                            [[NSArray alloc]initWithObjects:@"旅游",@"一起看世界",nil],[[NSArray alloc]initWithObjects:@"来疯",@"。。。",nil],
                            [[NSArray alloc]initWithObjects:@"大鱼号",@"新鲜段视频",nil],[[NSArray alloc]initWithObjects:@"小说",@"平凡的世界",nil],
                            [[NSArray alloc]initWithObjects:@"搞笑",@"欢乐正在前方",nil],[[NSArray alloc]initWithObjects:@"财经",@"看见财经范儿",nil],
                            [[NSArray alloc]initWithObjects:@"纪实",@"国家宝藏",nil],[[NSArray alloc]initWithObjects:@"品牌",@"山寨吧",nil],
                            [[NSArray alloc]initWithObjects:@"文化",@"young",nil],[[NSArray alloc]initWithObjects:@"时尚",@"引领潮流",nil],
                            [[NSArray alloc]initWithObjects:@"教育",@"知识就是力量",nil],[[NSArray alloc]initWithObjects:@"生活",@"枸杞和保温杯",nil],
                            [[NSArray alloc]initWithObjects:@"公益",@"世界很友好",nil],[[NSArray alloc]initWithObjects:@"吃鸡",@"绝地求生",nil],nil];
    return self;
}
@end

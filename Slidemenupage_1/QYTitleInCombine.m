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
                            [[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"记录",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"娱乐",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"生活",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"电视剧",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"综艺",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],
                            [[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],[[NSArray alloc]initWithObjects:@"电影",@"猫妖传",nil],nil];
    return self;
}
@end

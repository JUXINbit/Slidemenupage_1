//
//  QYCombineView.m
//  Slidemenupage_1
//
//  Created by 鞠鑫 on 2018/3/9.
//  Copyright © 2018年 鞠鑫. All rights reserved.
//

#import "QYCombineView.h"

@interface QYCombineView ()

@property (strong,nonatomic) UILabel* mainTitle;
@property (strong,nonatomic) UILabel* subTitle;

@end

@implementation QYCombineView
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        self.mainTitle = [[UILabel alloc]initWithFrame:CGRectMake(12, 0, 100, 40)];
        self.subTitle = [[UILabel alloc]initWithFrame:CGRectMake(12, 20, 100, 40)];
        self.mainTitle.font = [UIFont boldSystemFontOfSize:18];
        self.subTitle.font = [UIFont systemFontOfSize:13];
        self.mainTitle.textColor = [UIColor whiteColor];
        self.subTitle.textColor = [UIColor whiteColor];
        self.layer.cornerRadius = 4;
        self.layer.backgroundColor = randomColor.CGColor;
        self.layer.backgroundColor = randomColor.CGColor;
        [self addSubview:self.mainTitle];
        [self addSubview:self.subTitle];
    }
    return self;
}

- (void) updateData:(NSArray*)dataArray {
    assert(dataArray);
    self.mainTitle.text = dataArray[0];
    self.subTitle.text = dataArray[1];
}
@end

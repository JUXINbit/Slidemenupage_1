//
//  QYTableViewCell.m
//  Slidemenupage_1
//
//  Created by 鞠鑫 on 2018/3/12.
//  Copyright © 2018年 鞠鑫. All rights reserved.
//

#import "QYTableViewCell.h"
#import "Marco.h"

@implementation QYTableViewCell
- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier cellForRowAtIndexPath: (NSIndexPath *)indexPath hasTwoCombineView:(BOOL) hasTwoCombine{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(hasTwoCombine){
        self.myLeftIcon = [[QYCombineView alloc]initWithFrame:CGRectMake(leftSideOfMenu+15, 5, (widthOfMenu-30)/2-5, 90)];
        self.myRightIcon = [[QYCombineView alloc]initWithFrame:CGRectMake(leftSideOfMenu+widthOfMenu-(widthOfMenu-30)/2-10, 5, (widthOfMenu-30)/2-5, 90)];
//        if(indexPath.section == 0){
//            self.myLeftIcon.frame = CGRectMake(leftSideOfMenu+15, 55, (widthOfMenu-30)/2-5, 90);
//            self.myRightIcon.frame = CGRectMake(leftSideOfMenu+widthOfMenu-(widthOfMenu-30)/2-10, 55, (widthOfMenu-30)/2-5, 90);
//        }
        [self.contentView addSubview:self.myLeftIcon];
        [self.contentView addSubview:self.myRightIcon];
    }else{
        self.myLeftIcon = [[QYCombineView alloc]initWithFrame:CGRectMake(leftSideOfMenu+15, 5, (widthOfMenu-60)/3, 90)];
        self.myMidIcon = [[QYCombineView alloc]initWithFrame:CGRectMake(leftSideOfMenu+(widthOfMenu-60)/3+30, 5, (widthOfMenu-60)/3, 90)];
        self.myRightIcon = [[QYCombineView alloc]initWithFrame:CGRectMake(leftSideOfMenu+2*(widthOfMenu-60)/3+45, 5,(widthOfMenu-60)/3, 90)];
        [self addSubview:self.myLeftIcon];
        [self addSubview:self.myMidIcon];
        [self addSubview:self.myRightIcon];
    }
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    return self;
}
@end

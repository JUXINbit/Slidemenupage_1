//
//  QYTableViewCell.m
//  Slidemenupage_1
//
//  Created by 鞠鑫 on 2018/3/12.
//  Copyright © 2018年 鞠鑫. All rights reserved.
//

#import "QYTableViewCell.h"
#import "Marco.h"

@interface QYTableViewCell ()

@property (strong,nonatomic)QYCombineView* myLeftIcon;
@property (strong,nonatomic)QYCombineView* myMidIcon;
@property (strong,nonatomic)QYCombineView* myRightIcon;

@end

@implementation QYTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier cellForRowAtIndexPath: (NSIndexPath *)indexPath hasTwoCombineView:(BOOL) hasTwoCombine {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(hasTwoCombine){
        self.myLeftIcon = [[QYCombineView alloc]initWithFrame:CGRectMake(leftSideOfMenu+15, 5, (widthOfMenu-30)/2-5, 90)];
        self.myRightIcon = [[QYCombineView alloc]initWithFrame:CGRectMake(leftSideOfMenu+widthOfMenu-(widthOfMenu-30)/2-10, 5, (widthOfMenu-30)/2-5, 90)];
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

- (void) updateData:(NSMutableArray*) dataArrInCellComb indexofArr:(NSUInteger)index numberOfCellsHasTwoComb:(NSUInteger)number hasTwoCombines:(BOOL)hasTwoCombs {
    assert(dataArrInCellComb);
    if(hasTwoCombs){
        [self.myLeftIcon updateData:dataArrInCellComb[2*index]];
        [self.myRightIcon updateData:dataArrInCellComb[2*index+1]];
    }else{
        [self.myLeftIcon updateData:dataArrInCellComb[3*index-number]];
        [self.myMidIcon updateData:dataArrInCellComb[3*index-number+1]];
        [self.myRightIcon updateData:dataArrInCellComb[3*index-number+2]];
    }
}

@end

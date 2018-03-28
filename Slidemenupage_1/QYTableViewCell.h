//
//  QYTableViewCell.h
//  Slidemenupage_1
//
//  Created by 鞠鑫 on 2018/3/12.
//  Copyright © 2018年 鞠鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QYCombineView.h"

@interface QYTableViewCell : UITableViewCell
@property (strong,nonatomic)QYCombineView* myLeftIcon;
@property (strong,nonatomic)QYCombineView* myMidIcon;
@property (strong,nonatomic)QYCombineView* myRightIcon;
- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier cellForRowAtIndexPath: (NSIndexPath *)indexPath hasTwoCombineView:(BOOL) hasTwoCombine;
@end

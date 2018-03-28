//
//  QYCombineView.h
//  Slidemenupage_1
//
//  Created by 鞠鑫 on 2018/3/9.
//  Copyright © 2018年 鞠鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
#define RGBA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]
#define randomColor RGBA(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

@interface QYCombineView : UIView

- (void) updateData:(NSArray*)dataArray;

@end

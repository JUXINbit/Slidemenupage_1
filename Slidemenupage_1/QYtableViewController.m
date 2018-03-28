//
//  QYtableViewController.m
//  Slidemenupage_1
//
//  Created by 鞠鑫 on 2018/3/8.
//  Copyright © 2018年 鞠鑫. All rights reserved.
//

#import "QYtableViewController.h"
#import "QYTableViewCell.h"
#import "QYTitleInCombine.h"
#import "Marco.h"

#define  NumberOfSection       10                  //  NumberOfSection <= 10
#define  NumberOfTwoTableCell  3                   //  NumberOfTwoTableCell <= 7
#define  CellIdentifier_two    @"two"
#define  CellIdentifier_three  @"three"

@interface QYtableViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong,nonatomic)UITableView* myTableView;
@property (strong,nonatomic)UILabel*     myHeadTitle;
@property (strong,nonatomic)QYTitleInCombine* titleInCombine;
@end

@implementation QYtableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createMyTableView];
    self.titleInCombine = [[QYTitleInCombine alloc]init];
}

- (void)createMyTableView{
    self.myTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-65) style:UITableViewStylePlain];
    self.myTableView.separatorStyle = UITableViewCellSeparatorStyleNone;                                         
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    [self.view addSubview:self.myTableView];
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return NumberOfSection;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    if(indexPath.section == 0)
//        return 150;
//    if(indexPath.section < 3)
//        return 100;
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath *)indexPath{
    
    NSUInteger index = indexPath.section;
    QYTableViewCell* myCell = nil;
    if(index < NumberOfTwoTableCell){
        myCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier_two];
        if(!myCell){
            myCell = [[QYTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier_two cellForRowAtIndexPath:indexPath hasTwoCombineView:YES];
        }
        myCell.myLeftIcon.mainTitle.text = self.titleInCombine.mainTitleArray[2*index];
        myCell.myLeftIcon.subTitle.text = self.titleInCombine.subTitleArray[2*index];
        myCell.myRightIcon.mainTitle.text = self.titleInCombine.mainTitleArray[2*index+1];
        myCell.myRightIcon.subTitle.text = self.titleInCombine.subTitleArray[2*index+1];
    }else{
        myCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier_three];
        if(!myCell){
            myCell = [[QYTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier_three cellForRowAtIndexPath:indexPath hasTwoCombineView:NO];
        }
        myCell.myLeftIcon.mainTitle.text = self.titleInCombine.mainTitleArray[3*index-NumberOfTwoTableCell];
        myCell.myLeftIcon.subTitle.text = self.titleInCombine.subTitleArray[3*index-NumberOfTwoTableCell];
        myCell.myMidIcon.mainTitle.text = self.titleInCombine.mainTitleArray[3*index-NumberOfTwoTableCell+1];
        myCell.myMidIcon.subTitle.text = self.titleInCombine.subTitleArray[3*index-NumberOfTwoTableCell+1];
        myCell.myRightIcon.mainTitle.text = self.titleInCombine.mainTitleArray[3*index-NumberOfTwoTableCell+2];
        myCell.myRightIcon.subTitle.text = self.titleInCombine.subTitleArray[3*index-NumberOfTwoTableCell+2];
    }
    return myCell;
}
@end

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

@interface QYtableViewController () <UITableViewDataSource,UITableViewDelegate>
@property (strong,nonatomic)UITableView* myTableView;
@property (strong,nonatomic)UILabel*     myHeadTitle;
@property (nonatomic) QYTitleInCombine* titleInCombine;
@end

@implementation QYtableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createMyTableView];
    self.titleInCombine = [[QYTitleInCombine alloc]init];
}

- (void)createMyTableView {
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
        [myCell updateData:self.titleInCombine.dataInTitleArray indexofArr:index numberOfCellsHasTwoComb:NumberOfTwoTableCell hasTwoCombines:YES];
    }else{
        myCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier_three];
        if(!myCell){
            myCell = [[QYTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier_three cellForRowAtIndexPath:indexPath hasTwoCombineView:NO];
        }
        [myCell updateData:self.titleInCombine.dataInTitleArray indexofArr:index numberOfCellsHasTwoComb:NumberOfTwoTableCell hasTwoCombines:NO];
    }
    return myCell;
}
@end

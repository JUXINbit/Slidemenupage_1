//
//  QYTableView.m
//  Slidemenupage_1
//
//  Created by 鞠鑫 on 2018/3/8.
//  Copyright © 2018年 鞠鑫. All rights reserved.
//

#import "QYTableView.h"
#import "QYTwoTableViewCell.h"
#import "QYThreeTableViewCell.h"

@interface QYTableView ()<UITableViewDataSource,UITableViewDelegate>
@property (strong,nonatomic)UITableView* myTableView;
@property (strong,nonatomic)UILabel*     myHeadTitle;
@end

@implementation QYTableView

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createMyTableView];
    [self creatHeadTitleofTable];
}

-(void)createMyTableView{
    self.myTableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];   //普通
    self.myTableView.delegate=self;
    self.myTableView.dataSource=self;
    //self.myTableView.rowHeight=200;                     //该接口和代理借口中的heightForRowAtIndexPath产生的效果是一样的
    [self.view addSubview:self.myTableView];
}

-(void)creatHeadTitleofTable{
    self.myHeadTitle=[[UILabel alloc]init];
    self.myHeadTitle.frame=CGRectMake(0, 0, self.view.frame.size.width, 65);
    self.myHeadTitle.backgroundColor=[UIColor brownColor];
    self.myHeadTitle.alpha=0.9;
    self.myHeadTitle.text=@"频道";
    //self.myHeadTitle.font=[UIFont systemFontOfSize:25];
    self.myHeadTitle.font = [UIFont boldSystemFontOfSize:25];
    self.myHeadTitle.textColor=[UIColor blackColor];
    self.myHeadTitle.textAlignment=NSTextAlignmentCenter;                //设定对其方式为居中
    [self.view addSubview:self.myHeadTitle];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 7;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section==0)
        return 200;
    if(indexPath.section==1)
        return 150;
    return 100;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath *)indexPath{
    if(indexPath.section < 2){
        QYTwoTableViewCell* myCell=[[QYTwoTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:@"two" cellForRowAtIndexPath: indexPath];
        return myCell;
    }else{
        QYThreeTableViewCell* myCell_t=[[QYThreeTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"three"];
        [self.myTableView addSubview:myCell_t];
        return myCell_t;
    }
}
@end

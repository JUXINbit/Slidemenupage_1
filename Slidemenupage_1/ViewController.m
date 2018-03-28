//
//  ViewController.m
//  Slidemenupage_1
//
//  Created by 鞠鑫 on 2018/3/5.
//  Copyright © 2018年 鞠鑫. All rights reserved.
//

#import "ViewController.h"
#import "QYtableViewController.h"
#import "Marco.h"
#define SCREEN_WIDTH   self.view.frame.size.width
#define SCREEN_HEIGTH  self.view.frame.size.height
#define LEFTMENUVIEWBACKGROUNDCOLOR       [UIColor whiteColor]
#define MIANVIEWBACKGROUNDCOLOR           [UIColor whiteColor]
#define COVERVIEWCOLOR                    [UIColor grayColor]


@interface ViewController ()

@property (strong,nonatomic)QYtableViewController* menuTableController;
@property (strong,nonatomic)UIView*  leftMenuView;
@property (strong,nonatomic)UIView*  mainView;
@property (strong,nonatomic)UIView*  coverView;
@property (strong,nonatomic)UILabel* myHeadTitle;
@property (strong,nonatomic)UIButton* menuButton;
@property (strong,nonatomic)UIImageView* ButtonIconImageView;
@property (strong,nonatomic)UIImageView* backGroundImageView;
@property (assign,nonatomic)BOOL    isPageSlided;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setBackGroundImage];
    [self setCoverView];
    [self setMenuIconButtonAndShow];
    [self setMenuView];
    [self setMenutableView];
    [self setHeadTitleView];
    [self addEdgeGestureRec];
    [self addClickCoverViewGesture];
    self.isPageSlided = NO;
}

- (void)setBackGroundImage{
    self.backGroundImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGTH)];
    self.backGroundImageView.image = [UIImage imageNamed:@"IQY"];
    self.backGroundImageView.alpha = 0.4;
    [self.backGroundImageView setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:self.backGroundImageView];
}

- (void)setMenuView{
    self.leftMenuView = [[UIView alloc]init];
    self.leftMenuView.frame = CGRectMake(-SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGTH);
    self.leftMenuView.backgroundColor = LEFTMENUVIEWBACKGROUNDCOLOR;
    [self.view addSubview:self.leftMenuView];
}

- (void)setCoverView{
    self.coverView = [[UIView alloc]init];
    self.coverView.frame = CGRectMake(0, 0,SCREEN_WIDTH, SCREEN_HEIGTH);
    self.coverView.backgroundColor = COVERVIEWCOLOR;
    self.coverView.alpha = 0.0;
    [self.view addSubview:self.coverView];
}

- (void)setMenutableView{
    self.menuTableController = [[QYtableViewController alloc]init];
    self.menuTableController.view.frame = CGRectMake(0,65, SCREEN_WIDTH, SCREEN_HEIGTH);
    [self.leftMenuView addSubview:self.menuTableController.view];
}
- (void)setHeadTitleView{
    self.myHeadTitle = [[UILabel alloc]init];
    self.myHeadTitle.frame = CGRectMake(leftSideOfMenu, 0, self.view.frame.size.width-leftSideOfMenu, 60);
    self.myHeadTitle.backgroundColor = [UIColor whiteColor];
    self.myHeadTitle.alpha = 0.95;
    self.myHeadTitle.text = @"频道";
    self.myHeadTitle.font = [UIFont boldSystemFontOfSize:25];
    self.myHeadTitle.textColor = [UIColor blackColor];
    self.myHeadTitle.textAlignment = NSTextAlignmentCenter;
    [self.leftMenuView addSubview:self.myHeadTitle];
}

- (void)setMenuIconButtonAndShow{
    self.menuButton = [[UIButton alloc]initWithFrame:CGRectMake(10, 25, 30, 30)];
    [self.menuButton addTarget:self action:@selector(slideOut) forControlEvents:UIControlEventTouchDown];
    self.ButtonIconImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"menu"]];
    self.ButtonIconImageView.frame = CGRectMake(0, 0, 30, 30);
    [self.view addSubview:self.menuButton];
    [self.menuButton addSubview:self.ButtonIconImageView];
}

- (void)addEdgeGestureRec{
   UIScreenEdgePanGestureRecognizer* leftEdgeGestures = [[UIScreenEdgePanGestureRecognizer alloc]initWithTarget:self
                                                                                        action:@selector(slideOut)];
    leftEdgeGestures.edges = UIRectEdgeLeft;
    [self.view addGestureRecognizer:leftEdgeGestures];
}

- (void)addClickCoverViewGesture{
    UITapGestureRecognizer* clickCoverView = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(slideBack)];
    clickCoverView.numberOfTapsRequired = 1;
    clickCoverView.numberOfTouchesRequired = 1;
    [self.coverView addGestureRecognizer:clickCoverView];
}

- (void)clickLeftMenu{
    if(self.isPageSlided){
        [self slideBack];
    }else{
        [self slideOut];
    }
}

- (void)slideOut{
    if(!self.isPageSlided){
        CGPoint accountCenter = self.leftMenuView.center;
        accountCenter.x += (Proportion)*SCREEN_WIDTH;
        [UIView animateWithDuration: 0.2 animations: ^{
            self.leftMenuView.center = accountCenter;
            self.coverView.alpha = 0.9;
        } completion:nil];
        self.isPageSlided = YES;
    }
}

- (void)slideBack{
    if(self.isPageSlided){
        CGPoint accountCenter = self.leftMenuView.center;
        accountCenter.x -= (Proportion)*SCREEN_WIDTH;
        [UIView animateWithDuration: 0.2 animations: ^{
            self.leftMenuView.center = accountCenter;
            self.coverView.alpha = 0.0;
        } completion: nil];
        self.isPageSlided = NO;
    }
}
@end

//
//  BaseNavigationController.m
//  CalfLoan
//
//  Created by 周结兵 on 2017/3/24.
//  Copyright © 2017年 ShangHaiHongLu. All rights reserved.
//

#import "BaseNavigationController.h"
#import "UIColor+XNSD.h"

@interface BaseNavigationController ()<UIGestureRecognizerDelegate>

@property (nonatomic, strong) UIPanGestureRecognizer *panGes;

@end

@implementation BaseNavigationController

+(void)initialize
{
    [UINavigationBar appearance].translucent = NO;
    [[UINavigationBar appearance] setBarTintColor:[UIColor whiteColor]];
    //    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"index_bg_01"] forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSFontAttributeName:[UIFont systemFontOfSize:19],
                                                           NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [UINavigationBar appearance].barStyle = UIBaselineAdjustmentAlignBaselines;
    [[UINavigationBar appearance] setTranslucent:NO];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    [super pushViewController:viewController animated:YES];
    if (viewController.navigationItem.leftBarButtonItem ==nil && self.viewControllers.count >1) {
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"返回"] style:UIBarButtonItemStyleDone target:self action:@selector(dismissCurrentVC)];
    }
    
    
}

- (void)dismissCurrentVC
{
    [self popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    
    //1.获取系统的pop手势
    UIGestureRecognizer *systemGes = self.interactivePopGestureRecognizer;
    systemGes.enabled = NO;
    //2.获取手势添加的view
    UIView *gesView = systemGes.view;
    NSMutableArray *targetsArr = [systemGes valueForKey:@"_targets"];
    id targetObjc = [targetsArr firstObject];
    id targrt = [targetObjc valueForKey:@"_target"];
    SEL action = NSSelectorFromString(@"handleNavigationTransition:");
    
    UIPanGestureRecognizer *panGes = [[UIPanGestureRecognizer alloc] init];
    panGes.delegate = self;
    panGes.maximumNumberOfTouches = 3;
    [gesView addGestureRecognizer:panGes];
    //    [panGes addTarget:targrt action:action];
    self.panGes = panGes;
}

//实现
-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return self.viewControllers.count != 1 && ![[self valueForKey:@"_isTransitioning"] boolValue];
    
}

@end

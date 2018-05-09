//
//  NavigationSVC.m
//  tabBarViewController_test
//
//  Created by Dmitriy Tarelkin on 9/5/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "NavigationSVC.h"

@interface NavigationSVC ()

@end

@implementation NavigationSVC

- (void)viewDidLoad {
    NSLog(@"NAV2 | viewDidLoad");
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.title = @"Nav2";
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 400, 150)];
    [label setText:@"Navigation Second View Controller"];
    [label setFont:[UIFont fontWithName:@"Helvetica" size:15]];
    [self.view addSubview: label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"NAV2 | viewWillAppear");
}
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"NAV2 | viewWillLayoutSubviews");
}
- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"NAV2 | viewDidLayoutSubviews");
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"NAV2 | viewDidAppear");
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"NAV2 | viewWillDisappear");
}
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"NAV2 | viewDidDisappear");
}
- (void)dealloc {
    NSLog(@"NAV2 | dealloc");
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end

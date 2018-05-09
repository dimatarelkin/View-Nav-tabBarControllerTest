//
//  first_VC.m
//  tabBarViewController_test
//
//  Created by Dmitriy Tarelkin on 9/5/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "first_VC.h"
#import "Second_VC.h"

@interface first_VC ()

@end

@implementation first_VC

- (void)loadView {
    [super loadView];
    NSLog(@"VC1 loadView");
    UIView *defaultView = [[UIView alloc] init];
    defaultView.backgroundColor = [UIColor redColor];
    [self setView:defaultView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"VC1 viewDidLoad");
    
    //present second VC button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 300, 150, 20);
    [button setBackgroundColor:[UIColor greenColor]];
    [button setTitle:@"Next Controller" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    //dismiss button
    UIButton* dismissButton = [UIButton buttonWithType:UIButtonTypeSystem];
    dismissButton.frame = CGRectMake(100, 100, 150, 20);
    [dismissButton setBackgroundColor:[UIColor greenColor]];
    [dismissButton setTitle:@"Dismiss Controller" forState:UIControlStateNormal];
    [dismissButton addTarget:self action:@selector(buttonClickDismiss:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dismissButton];
}

-(void)buttonClick:(id)sender {
    Second_VC* svc = [[Second_VC alloc] init];
    [self presentViewController:svc animated:YES completion:^{
        NSLog(@"second view controller is presented!");
    }];
}

-(void)buttonClickDismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"first VC dismissed");
    }];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"VC1 viewWillAppear");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"VC1 viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"VC1 viewDidLayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"VC1 viewDidAppear");
}

// MARK: - Step 3

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"VC1 viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"VC1 viewDidDisappear");
}

- (void)dealloc {
    NSLog(@"VC1 dealloc");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end

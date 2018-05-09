//
//  Second_VC.m
//  tabBarViewController_test
//
//  Created by Dmitriy Tarelkin on 9/5/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "Second_VC.h"

@interface Second_VC ()

@end

@implementation Second_VC

- (void)loadView {
    [super loadView];
    NSLog(@"2VC loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor yellowColor]];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"go back" forState: UIControlStateNormal];
    button.frame = CGRectMake(100, 300, 150, 50);
    button.backgroundColor = [UIColor blackColor];
    [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

}

-(void)clickButton:(id)sender {
    [self dismissViewControllerAnimated:true completion:^{
        NSLog(@"2VC | dismissViewControllerAnimated");
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"2VC | viewWillAppear");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"2VC | viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"2VC | viewDidLayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"2VC | viewDidAppear");
}

// MARK: - Step 3

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"2VC | viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"2VC | viewDidDisappear");
}

- (void)dealloc {
    NSLog(@"2VC | dealloc");
}
#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end

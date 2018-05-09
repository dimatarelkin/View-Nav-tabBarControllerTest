//
//  NavigationFVC.m
//  tabBarViewController_test
//
//  Created by Dmitriy Tarelkin on 9/5/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "NavigationFVC.h"
#import "NavigationSVC.h"

@interface NavigationFVC ()

@end

@implementation NavigationFVC

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"NAV1 | viewDidLoad");
    self.view.backgroundColor = [UIColor yellowColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 400, 150)];
    [label setText:@"Navigation First View Controller"];
    [label setFont:[UIFont fontWithName:@"Helvetica" size:15]];
    [self.view addSubview: label];
    
    
    //setting right bar navigation item
    UIBarButtonItem* rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Next"
                                                                    style:UIBarButtonItemStyleDone
                                                                   target:self
                                                                   action:@selector(barButtonItemClick:)];
    [self.navigationItem setRightBarButtonItem:rightButton];
    
    
    
    //create toolBar
    UIToolbar* tb = [[UIToolbar alloc] initWithFrame:CGRectMake(50, 400, 200, 50)];
    tb.backgroundColor = [UIColor redColor];
    
    [tb setItems:[NSArray arrayWithObject:rightButton]];
    [self.view addSubview:tb];
    
    
    
}

-(void)barButtonItemClick:(id)sender {
    NavigationSVC* svc = [[NavigationSVC alloc] init];
    [self.navigationController pushViewController:svc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"NAV1 | viewWillAppear");
}
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"NAV1 | viewWillLayoutSubviews");
}
- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"NAV1 | viewDidLayoutSubviews");
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"NAV1 | viewDidAppear");
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"NAV1 | viewWillDisappear");
}
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"NAV1 | viewDidDisappear");
}
- (void)dealloc {
    NSLog(@"NAV1 | dealloc");
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end

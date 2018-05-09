//
//  TabBarClass.m
//  tabBarViewController_test
//
//  Created by Dmitriy Tarelkin on 9/5/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "TabBarClass.h"

@interface TabBarClass ()

@end

@implementation TabBarClass

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"TBC1 viewDidLoad");
    self.title = @"Tab bar";
    self.view.backgroundColor = [UIColor greenColor];
    
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [label setText:@"Tab Bar View Controller"];
    
    //tabBarItem
//    UIImage* img = [UIImage imageNamed:@"111.png"];
//    UITabBarItem* right = [[UITabBarItem alloc] initWithTitle:@"Go"
//                                                        image:img tag:0];
//    right.badgeColor = [UIColor blackColor];
    NSMutableArray* barButtonArray = [NSMutableArray array];
    UIBarButtonItem* rightButton = [[UIBarButtonItem alloc] initWithTitle:@"First"
                                                                    style:UIBarButtonItemStyleDone
                                                                   target:self
                                                                   action:@selector(barButtonItemClick:)];
    
    [barButtonArray addObject:rightButton];
    [self setToolbarItems:barButtonArray animated:YES];
}

-(void)barButtonItemClick:(id)sender {
    NSLog(@"tool bar button first is clicked");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"TBC1 | viewWillAppear");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"TBC1 | viewWillLayoutSubviews");
}


- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"TBC1 | viewDidLayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"TBC1 | viewDidAppear");
}

// MARK: - Step 3

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"TBC1 | viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"TBC1 | viewDidDisappear");
}

- (void)dealloc {
    NSLog(@"TBC1 | dealloc");
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

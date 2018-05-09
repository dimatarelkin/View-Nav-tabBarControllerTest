//
//  ViewController.m
//  tabBarViewController_test
//
//  Created by Dmitriy Tarelkin on 9/5/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "ViewController.h"
#import "first_VC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor grayColor]];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 300, 150, 20);
    [button setBackgroundColor:[UIColor greenColor]];
    [button setTitle:@"Next Controller" forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClick:(id)sender {
    first_VC* fvc = [[first_VC alloc] init];
    fvc.view.backgroundColor = [UIColor redColor];
    [self presentViewController:fvc animated:YES completion:^{
        NSLog(@"first view controller is presented");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

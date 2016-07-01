//
//  ViewController.m
//  CustomTABView
//
//  Created by roctian on 16/7/1.
//  Copyright © 2016年 roctian. All rights reserved.
//

#import "ViewController.h"
#import "YTSSCustomTABView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    YTSSCustomTABView *tabView = [[YTSSCustomTABView alloc] initWithFrame:CGRectMake(10, 64, self.view.frame.size.width-20, 144)];
    
    tabView.horizontalSpacing = 5;
    tabView.selectButtonHeight = 35;
    tabView.selectColor = [UIColor greenColor];
    tabView.unSelectColor = [UIColor redColor];
    tabView.textFont = [UIFont systemFontOfSize:14.0f];
    tabView.textColor = [UIColor yellowColor];
    
    tabView.items = @[@"TEST1",@"TEST2",@"TEST3",@"TEST4"];
    tabView.itemsSubView = @[[self getText:@"TEST1"],[self getText:@"TEST2"],[self getText:@"TEST3"],[self getText:@"TEST4"]];
    
    tabView.selectIndex = 3;
    
    [self.view addSubview:tabView];
}
-(UILabel *)getText:(NSString *)text{

    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 40,self.view.frame.size.width-20, 20)];
    testLabel.text = text;
    testLabel.textAlignment = NSTextAlignmentCenter;
    
    return testLabel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

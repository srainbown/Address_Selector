//
//  ViewController.m
//  地址选择器
//
//  Created by mac on 19/11/2018.
//  Copyright © 2018 Woodsoo. All rights reserved.
//

#import "ViewController.h"
#import "WSAddressPicker.h"

@interface ViewController ()<WSAddressPickerDelegate>

@property (nonatomic ,strong) WSAddressPicker *pickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *zoneBtn = [[UIButton alloc]initWithFrame:CGRectMake(137.5, 100, 100, 50)];
    [self.view addSubview:zoneBtn];
    zoneBtn.backgroundColor = [UIColor grayColor];
    [zoneBtn setTitle:@"选择" forState:UIControlStateNormal];
    [zoneBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [zoneBtn  addTarget:self action:@selector(zoneBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)zoneBtnClick{
    
    self.pickerView = [[WSAddressPicker alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.pickerView updateAddressAtProvince:@"北京市" city:@"北京市" town:@"东城区"];
    self.pickerView.delegate = self;
    self.pickerView.font = [UIFont boldSystemFontOfSize:18];
    [self.view addSubview:self.pickerView];
    
}

#pragma mark -- WSAddressPickerDelegate
- (void)WSAddressPickerCancleAction{
    
    [self.pickerView removeFromSuperview];
}

- (void)WSAddressPickerWithProvince:(NSString *)province
                               city:(NSString *)city area:(NSString *)area{
    [self.pickerView removeFromSuperview];
    
    NSLog(@"%@  %@  %@",province,city,area);
//    self.zoneTitleLabel.text = [NSString stringWithFormat:@"%@ %@ %@",province,city,area];
    
}


@end

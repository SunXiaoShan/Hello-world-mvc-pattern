//
//  ViewController.m
//  MVC_Pattern
//
//  Created by Gemtek_Phineas_Huang on 2015/4/22.
//  Copyright (c) 2015年 SunXiaoShan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    ViewObject *mV;
    ControllerObject *mC;
    ModelObject *mM;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    mM = [[ModelObject alloc] init];
    mC = [[ControllerObject alloc] initWithModel:mM];
    mV = [[ViewObject alloc] initWithController:mC withModel:mM];
    [mM registerModelObserver:mV];
}

- (void) viewWillAppear:(BOOL)animated
{
    [mV setText:@"hello"];
    
    [mV clickButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

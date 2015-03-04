//
//  ViewController.m
//  checkSA
//
//  Created by Faisal AL-Otaibi on 2/7/1436 AH.
//  Copyright (c) 1436 Faisal AL-Otaibi. All rights reserved.
//

#import "ViewController.h"
#import "NSString+SaudiCheck.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *str = @"1132567786";
    NSLog(@"check ksa %d", [str checkId]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

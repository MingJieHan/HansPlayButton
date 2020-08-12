//
//  ViewController.m
//  HansPlayButton
//
//  Created by Han Mingjie on 2020/8/12.
//  Copyright © 2020 MingJie Han. All rights reserved.
//

#import "ViewController.h"
#import "HansPlayButton.h"
@interface ViewController (){
    HansPlayButton *btn;
}

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if (nil == btn){
        HansPlayButton *btn = [[HansPlayButton alloc] initWithFrame:CGRectMake(100, 100, self.view.frame.size.width-200.f, self.view.frame.size.width-200.f)];
        btn.LineColor = [UIColor colorWithRed:12/255.0 green:190/255.0 blue:6/255.0 alpha:1];
        btn.transformanimationDuration = 0.5;
        btn.positionAnimationDuration = 0.3;
        btn.buttonState = HansPlayButtonStatePlay;
        
        [btn addTarget:self action:@selector(btnHandle:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}
- (void)btnHandle:(HansPlayButton *)btn {
    if (btn.buttonState == HansPlayButtonStatePlay) {
        btn.buttonState = HansPlayButtonStatePause;
    }   else {
        btn.buttonState = HansPlayButtonStatePlay;
    }
}

@end

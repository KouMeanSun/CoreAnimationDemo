//
//  ViewController.m
//  CoreAnimationLearnDemo
//
//  Created by 高明阳 on 2020/8/4.
//  Copyright © 2020 高明阳. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) CAEmitterLayer * rainLayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self commonInit];
}

-(void)commonInit{
    self.title  = @"核心动画";
    self.view.backgroundColor = [UIColor whiteColor];
//    [self rainZongzi];
//    [self rainHongbao];
//     [self rainJinbi];
[self rainAll];
}
-(void)rainZongzi{
    CAEmitterLayer *rainLayer = [CAEmitterLayer layer];

    [self.view.layer addSublayer:rainLayer];
    self.rainLayer = rainLayer;

    rainLayer.emitterShape = kCAEmitterLayerLine;
    rainLayer.emitterMode = kCAEmitterLayerSurface;
    rainLayer.emitterSize = self.view.frame.size;
    rainLayer.emitterPosition = CGPointMake(self.view.bounds.size.width * 0.5, -10);

    CAEmitterCell *snowCell = [CAEmitterCell emitterCell];
    snowCell.contents = (__bridge id)[[UIImage imageNamed:@"zongzi2.jpg"] CGImage];
    snowCell.birthRate = 1.0;
    snowCell.lifetime = 30;
    snowCell.speed = 2;
    snowCell.velocity = 10.0f;
    snowCell.velocityRange = 10.0f;
    snowCell.yAcceleration = 60;
    snowCell.scale = 0.05;
    snowCell.scaleRange = 0.0f;

    rainLayer.emitterCells = @[snowCell];
}
-(void)rainHongbao{
    CAEmitterLayer *rainLayer = [CAEmitterLayer layer];
    [self.view.layer addSublayer:rainLayer];
    self.rainLayer = rainLayer;

    rainLayer.emitterShape = kCAEmitterLayerLine;
    rainLayer.emitterMode = kCAEmitterLayerSurface;
    rainLayer.emitterSize = self.view.frame.size;
    rainLayer.emitterPosition = CGPointMake(self.view.bounds.size.width*0.5, -10);

    CAEmitterCell *snowCell = [CAEmitterCell emitterCell];
    snowCell.contents =  (__bridge id)[[UIImage imageNamed:@"hongbao.png"] CGImage];

    snowCell.birthRate = 1.0;
    snowCell.lifetime = 30;
    snowCell.speed = 2;
    snowCell.velocity = 10.0f;
    snowCell.velocityRange = 10.0f;
    snowCell.yAcceleration = 60;
    snowCell.scale = 0.05;
    snowCell.scaleRange = 0.0f;

    rainLayer.emitterCells = @[snowCell];
}
-(void)rainJinbi{

    //1. 设置CAEmitterLayer
    CAEmitterLayer * rainLayer = [CAEmitterLayer layer];

    //2.在背景图上添加粒子图层
    [self.view.layer addSublayer:rainLayer];
    self.rainLayer = rainLayer;

    //3.发射形状--线性
    rainLayer.emitterShape = kCAEmitterLayerLine;
    rainLayer.emitterMode = kCAEmitterLayerSurface;
    rainLayer.emitterSize = self.view.frame.size;
    rainLayer.emitterPosition = CGPointMake(self.view.bounds.size.width * 0.5, -10);

    //2. 配置cell
    CAEmitterCell * snowCell = [CAEmitterCell emitterCell];
    snowCell.contents = (__bridge id)[[UIImage imageNamed:@"jinbi.png"] CGImage];
    snowCell.birthRate = 1.0;
    snowCell.lifetime = 30;
    snowCell.speed = 2;
    snowCell.velocity = 10.f;
    snowCell.velocityRange = 10.f;
    snowCell.yAcceleration = 60;
    snowCell.scale = 0.1;
    snowCell.scaleRange = 0.f;

    // 3.添加到图层上
    rainLayer.emitterCells = @[snowCell];
}
-(void)rainAll{
    //1. 设置CAEmitterLayer
    CAEmitterLayer * rainLayer = [CAEmitterLayer layer];

    //2.在背景图上添加粒子图层
    [self.view.layer addSublayer:rainLayer];
    self.rainLayer = rainLayer;

    //3.发射形状--线性
    rainLayer.emitterShape = kCAEmitterLayerLine;
    rainLayer.emitterMode = kCAEmitterLayerSurface;
    rainLayer.emitterSize = self.view.frame.size;
    rainLayer.emitterPosition = CGPointMake(self.view.bounds.size.width * 0.5, -10);

    //2. 配置cell
    CAEmitterCell * snowCell = [CAEmitterCell emitterCell];
    snowCell.contents = (__bridge id)[[UIImage imageNamed:@"jinbi.png"] CGImage];
    snowCell.birthRate = 1.0;
    snowCell.lifetime = 30;
    snowCell.speed = 2;
    snowCell.velocity = 10.f;
    snowCell.velocityRange = 10.f;
    snowCell.yAcceleration = 60;
    snowCell.scale = 0.1;
    snowCell.scaleRange = 0.f;

    CAEmitterCell * hongbaoCell = [CAEmitterCell emitterCell];
    hongbaoCell.contents = (__bridge id)[[UIImage imageNamed:@"hongbao.png"] CGImage];
    hongbaoCell.birthRate = 1.0;
    hongbaoCell.lifetime = 30;
    hongbaoCell.speed = 2;
    hongbaoCell.velocity = 10.f;
    hongbaoCell.velocityRange = 10.f;
    hongbaoCell.yAcceleration = 60;
    hongbaoCell.scale = 0.05;
    hongbaoCell.scaleRange = 0.f;

    CAEmitterCell * zongziCell = [CAEmitterCell emitterCell];
    zongziCell.contents = (__bridge id)[[UIImage imageNamed:@"zongzi2.jpg"] CGImage];
    zongziCell.birthRate = 1.0;
    zongziCell.lifetime = 30;
    zongziCell.speed = 2;
    zongziCell.velocity = 10.f;
    zongziCell.velocityRange = 10.f;
    zongziCell.yAcceleration = 60;
    zongziCell.scale = 0.05;
    zongziCell.scaleRange = 0.f;

    // 3.添加到图层上
    rainLayer.emitterCells = @[snowCell,hongbaoCell,zongziCell];
}
@end

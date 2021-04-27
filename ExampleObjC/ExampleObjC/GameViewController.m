//
//  GameViewController.m
//  ExampleObjC
//
//  Created by developer on 27.04.2021.
//

#import "GameViewController.h"

@interface GameViewController ()

@property (strong, nonatomic) UIImageView *paddleTop;
@property (strong, nonatomic) UIImageView *paddleBottom;
@property (strong, nonatomic) UIView *gridView;
@property (strong, nonatomic) UIView *ball;
@property (strong, nonatomic) UITouch *topTouch;
@property (strong, nonatomic) UITouch *bottomTouch;
@property (strong, nonatomic) NSTimer * timer;
@property (nonatomic) CGFloat dx;
@property (nonatomic) CGFloat dy;
@property (nonatomic) CGFloat speed;
@property (strong, nonatomic) UILabel *scoreTop;
@property (strong, nonatomic) UILabel *scoreBottom;

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configBackground];
    [self configGrid];
    [self configPaddleTop];
    [self configPaddleBottom];
    [self configBall];
    [self configScoreTop];
    [self configScoreBottom];
}

- (void)configBackground {
    self.view.backgroundColor = [UIColor colorWithRed:100.0/255.0 green:135.0/255.0 blue:191.0/255.0 alpha:1.0];
}

- (void)configGrid {
    self.gridView = [[UIView alloc] initWithFrame:CGRectMake(0, HALF_SCREEN_HEIGHT - 2, SCREEN_WIDTH, 4)];
    self.gridView.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.5];
    [self.view addSubview:self.gridView];
}

- (void)configPaddleTop {
    self.paddleTop = [[UIImageView alloc] initWithFrame:CGRectMake(30, 40, 90, 60)];
    self.paddleTop.image = [UIImage imageNamed:@"paddleTop"];
    self.paddleTop.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.paddleTop];
}

- (void)configPaddleBottom {
    self.paddleBottom = [[UIImageView alloc] initWithFrame:CGRectMake(30, SCREEN_HEIGHT - 90, 90, 60)];
    self.paddleBottom.image = [UIImage imageNamed:@"paddleBottom"];
    self.paddleBottom.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.paddleBottom];
}

- (void)configBall {
    self.ball = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 10, self.view.center.y - 10, 20, 20)];
    self.ball.backgroundColor = [UIColor whiteColor];
    self.ball.layer.cornerRadius = 10;
    self.ball.hidden = YES;
    [self.view addSubview:self.ball];
}

- (void)configScoreTop {
    self.scoreTop = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 40, HALF_SCREEN_HEIGHT - 50, 40, 40)];
    self.scoreTop.textColor = [UIColor whiteColor];
    self.scoreTop.text = @"0";
    self.scoreTop.font = [UIFont systemFontOfSize:20.0 weight:UIFontWeightLight];
    self.scoreTop.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.scoreTop];
}

- (void)configScoreBottom {
    self.scoreBottom = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 40, HALF_SCREEN_HEIGHT + 10, 40, 40)];
    self.scoreBottom.textColor = [UIColor whiteColor];
    self.scoreBottom.text = @"0";
    self.scoreBottom.font = [UIFont systemFontOfSize:20.0 weight:UIFontWeightLight];
    self.scoreBottom.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.scoreBottom];
}

@end
//
//  ViewController.m
//  SampleApp
//
//  Created by 俞昊 on 2021/4/14.
//

#import "ViewController.h"
#import <YYText/YYText.h>
#import "Defines.h"
#import <Masonry/Masonry.h>
#import <WebKit/WebKit.h>
#import "WebDetailViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIColor *backgroundColor;
@property (nonatomic, strong) UILabel *textLabel;
@property (nonatomic, strong) UIButton *retireButton;

@end

@implementation ViewController

- (instancetype) initWithColor:(UIColor *)color
{
    if(self = [super init]){
        self.backgroundColor = color;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configUI];
}

- (void)viewWillAppear:(BOOL)animated
{
    self.textLabel.text = [NSString stringWithFormat:@"This is the %ldth view.", self.index];
}

- (void)configUI
{
    self.view.backgroundColor = self.backgroundColor ?: [UIColor whiteColor];
    [self.view addSubview:self.textLabel];
    [self.textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(88);
        make.centerX.equalTo(self.view);
        make.height.mas_equalTo(50);
    }];
    [_textLabel setContentHuggingPriority:UILayoutPriorityRequired
                                    forAxis:UILayoutConstraintAxisHorizontal];
    [self.view addSubview:self.retireButton];
    [self.retireButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.height.mas_equalTo(200);
    }];
}

- (void)retireButtonClicked
{
    WebDetailViewController *webVC = [[WebDetailViewController alloc] init];
    [self.navigationController pushViewController:webVC animated:YES];
}

- (UILabel *)textLabel
{
    if(!_textLabel){
        _textLabel = [[UILabel alloc] init];
        _textLabel.backgroundColor = [UIColor whiteColor];
        _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.textColor = ssRGBHex(0x162823);
        _textLabel.font = [UIFont systemFontOfSize:18];
    }
    return _textLabel;
}

- (UIButton *)retireButton
{
    if(!_retireButton){
        _retireButton = [[UIButton alloc] init];
        [_retireButton setBackgroundImage:[UIImage imageNamed:@"离职吧"] forState:UIControlStateNormal];
        [_retireButton addTarget:self action:@selector(retireButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return _retireButton;
}
@end

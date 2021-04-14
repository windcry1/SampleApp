//
//  WebDetailViewController.m
//  SampleApp
//
//  Created by 俞昊 on 2021/4/14.
//

#import "WebDetailViewController.h"
#import <WebKit/WebKit.h>
#import "Defines.h"

@interface WebDetailViewController ()

@property (nonatomic, strong) WKWebView *webView;

@end

@implementation WebDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUI];
}

- (void)configUI
{
    self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 88, SCREEN_WIDTH, SCREEN_HEIGHT - 88)];
    [self.view addSubview:self.webView];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.jianshu.com"]];
    [self.webView loadRequest:request];
}

@end

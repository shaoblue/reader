//
//  WebViewController.m
//  readerSample
//
//  Created by Takumi Yamamoto on 2013/05/04.
//  Copyright (c) 2013年 Takumi Yamamoto. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithURL:(NSURL *)link
{
    self = [super init];
    if(self){
        url = link;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    UINavigationBar* naviBar = [UINavigationBar new];
    naviBar.delegate = self;
    naviBar.frame = CGRectMake(0,0,self.view.frame.size.width , 44);
    naviBar.backItem.rightBarButtonItems = UIBarButtonSystemItemDone;
    
    [self.view addSubview:naviBar];
    
    
    
    //self.navigationItem.title = @"hoge";
    
    /*
    UIBarButtonItem *btn = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemCamera
                             target:self action:@selector(hoge:)];
    self.navigationItem.rightBarButtonItem = btn;
    
    self.navigationItem.backBarButtonItem = btn;
     */
    
    UIWebView *wv = [[UIWebView alloc] init];
    wv.delegate = self;
    wv.frame = CGRectMake(0,44, self.view.frame.size.width, self.view.frame.size.height);
    wv.scalesPageToFit = YES;
    [self.view addSubview:wv];
    
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [wv loadRequest:req];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  ThreeX
//
//  Created by Venj Chu on 14/8/30.
//  Copyright (c) 2014年 Venj Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"image" ofType:@"png"];
    UIImage *image = [[UIImage alloc] initWithContentsOfFile:path];
    // UIImage *image = [UIImage imageNamed:@"image"]; // Do not load 3x image
    self.imageView.image = image;
    NSLog(@"%f", image.scale);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

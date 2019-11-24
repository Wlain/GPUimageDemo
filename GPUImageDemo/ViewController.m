//
//  ViewController.m
//  GPUImageDemo
//
//  Created by william on 2019/4/4.
//  Copyright © 2019 william. All rights reserved.
//

#import "ViewController.h"
#import "GPUImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *inputImage = [UIImage imageNamed:@"test.jpg"];

    GPUImagePicture *stillImageSource = [[GPUImagePicture alloc] initWithImage:inputImage];
    GPUImageSepiaFilter *stillImageFilter = [[GPUImageSepiaFilter alloc] init];
    GPUImageView *view = [[GPUImageView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:view];
    [stillImageSource addTarget:stillImageFilter];
    [stillImageSource addTarget:view];
    [stillImageFilter useNextFrameForImageCapture];
    [stillImageSource processImage];
    UIImage *currentFilteredVideoFrame = [stillImageFilter imageFromCurrentFramebuffer];
    NSLog(@"cwb");
}


@end

//
//  CALayerViewController.m
//  LayerPlayerOc
//
//  Created by 武蕴 on 15/8/17.
//  Copyright (c) 2015年 WymanY. All rights reserved.
//

#import "CALayerViewController.h"
#import "CALayerControlsViewController.h"

@interface CALayerViewController ()
{
    CALayer *_layer;
    UIImage *_star;
}
@property (weak, nonatomic) IBOutlet UIView *viewForLayer;

@end

@implementation CALayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //setup Layer
    [self setUpLayer];
    [_viewForLayer.layer addSublayer:_layer];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    
    
}

- (void)setUpLayer
{
    //initlize
    _layer = [CALayer layer];
    _star = [UIImage imageNamed:@"star"];
    
    //set layer property
    _layer.frame = _viewForLayer.bounds;
    _layer.contents = (id)_star.CGImage;
    _layer.contentsGravity = @"center";
    _layer.geometryFlipped = NO;
    _layer.cornerRadius = 100.0;
    _layer.borderWidth = 12.0;
    _layer.backgroundColor = [UIColor greenColor].CGColor;
    _layer.borderColor = [UIColor whiteColor].CGColor;
    _layer.shadowOffset = CGSizeMake(0, 3);
    _layer.shadowOpacity = 0.7;
    _layer.shadowRadius = 3.0;
    _layer.magnificationFilter = kCAFilterLinear;
    
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSString *identifer = segue.identifier;
    if ([@"DisplayLayerControls" isEqualToString:identifer]) {
       
        CALayerControlsViewController *controller = (CALayerControlsViewController *)segue.destinationViewController;
        controller.layerViewController = self;
        
    }
    
    
    
    
}


@end

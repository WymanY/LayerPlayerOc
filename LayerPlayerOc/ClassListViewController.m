//
//  ClassListViewController.m
//  LayerPlayerOc
//
//  Created by 武蕴 on 15/8/17.
//  Copyright (c) 2015年 WymanY. All rights reserved.
//

#import "ClassListViewController.h"

@interface ClassListViewController ()
@property (nonatomic,strong) NSArray *classes;

@end

@implementation ClassListViewController

- (NSArray *)classes
{
    if (_classes == nil) {
        _classes = @[@[@"CALayer",@"Manage and animate visual content"],
                     @[@"CAScrollLayer",@"Display portion of a scrollable layer"],
                     @[@"CATextLayer",@"Render plain text or attributed strings"],
                     @[@"AVPlayerLayer",@"Display an AV player"],
                     @[@"CAGradientLayer",@"Apply a color gradient over the background"],
                     @[@"CAReplicatorLayer", @"Duplicate a source layer"],
                     @[@"CATiledLayer", @"Asynchronously draw layer content in tiles"],
                     @[@"CAShapeLayer", @"Draw using scalable vector paths"],
                     @[@"CAEAGLLayer", @"Draw OpenGL content"],
                     @[@"CATransformLayer", @"Draw 3D structures"],
                     @[@"CAEmitterLayer", @"Render animated particles"]
                     ];
    }
    return _classes;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"测试添加一芳发");
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.classes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ClassCell" forIndexPath:indexPath];
    cell.textLabel.text = self.classes[indexPath.row][0];
    cell.detailTextLabel.text = self.classes[indexPath.row][1];
    cell.imageView.image = [UIImage imageNamed:self.classes[indexPath.row][0]];
    
    return cell;
}

#pragma mark -uitableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identerfier = self.classes[indexPath.row][0];
    if ([@"CALayer" isEqualToString:identerfier]) {
        [self performSegueWithIdentifier:identerfier sender:nil];
    }

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  ImagesTableViewController.m
//  Blocstagram
//
//  Created by Rohan on 05/12/14.
//  Copyright (c) 2014 Rohan Khara. All rights reserved.
//

#import "ImagesTableViewController.h"

@interface ImagesTableViewController ()
@property (nonatomic, strong) NSMutableArray *images;

@end

@implementation ImagesTableViewController

-(id)initWithStyle:(UITableViewStyle) style

{
    
    self = [super initWithStyle: style];
    if (self)
        
    {
        
        self.images = [NSMutableArray array];
        
    }
    
    return self;
}


- (void)viewDidLoad

{
    [super viewDidLoad];
    
    for (int i=1; i<=10; i++)
        
    {
        
        NSString *imageName = [NSString stringWithFormat:@"%d.jpg",i];
        UIImage *image = [UIImage imageNamed:imageName];
        if (image)
            
        {
            [self.images addObject: image];
            
        }
        
    }
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"imageCell"];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

/* - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
 #warning Potentially incomplete method implementation.
 // Return the number of sections.
 return 0;
 } */

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    return self.images.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"imageCell" forIndexPath:indexPath];
    static NSInteger imageViewTag = 1234;
    UIImageView *imageView = (UIImageView *) [cell.contentView viewWithTag:imageViewTag];
    
    if (!imageView)
        
    {
        
        imageView = [UIImageView new];
        imageView.contentMode = UIViewContentModeScaleToFill;
        
        imageView.frame = cell.contentView.bounds;
        imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        
        imageView.tag = imageViewTag;
        [cell.contentView addSubview:imageView];
        
    }
    
    return cell;
}


- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath

{
    // return 300;
    // UIImage *image = self.images[indexPath.row];
    // return image.size.height;
    
    UIImage *image = self.images[indexPath.row];
    return ((image.size.height / image.size.width) * CGRectGetWidth(self.view.frame));
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath

{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        // Delete the row from the data source
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
        [self.images delete:indexPath];
    }
    
   /* else if (editingStyle == UITableViewCellEditingStyleInsert)
        
    {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }*/
}


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

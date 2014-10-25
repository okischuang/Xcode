//
//  MainTableViewController.m
//  Day4_1
//
//  Created by Okis Chuang on 2014/10/24.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#import "MainTableViewController.h"
#import "AddViewController.h"
#import "ModViewController.h"
#import "AppDelegate.h"
#import "Beverage.h"
@interface MainTableViewController ()

@end

@implementation MainTableViewController

-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _appDelegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.appDelegate loadData];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton* button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [button addTarget:self action:@selector(doAdd:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem* buttonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = buttonItem;
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
//    NSArray* iPhoneProducts = @[@"iph6-16g",@"iph6-64g",@"iph6-128g",@"iph6plus-16g",@"iph6plus-64g",@"iph6plus-64g"];
//    NSArray* iPadProducts = @[@"ipad6-16g",@"ipad6-64g",@"ipad6-128g",@"ipadair-16g",@"ipadair-64g",@"ipadair-64g"];
//    self.tableData = @[iPhoneProducts,iPadProducts].mutableCopy;
//    self.titleData = @[@"iPhone Products",@"iPad Product"].mutableCopy;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void) doAdd:(id) sender {
    NSLog(@"Pressed");
    AddViewController *addViewController = [[AddViewController alloc] initWithNibName:@"AddViewController" bundle:nil];
    addViewController.title = @"ADD";
    [self.navigationController pushViewController:addViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    //return self.tableData.count;
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    //return [self.tableData[section] count];
    return self.appDelegate.tableData.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* cellName = @"myCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleSubtitle
                reuseIdentifier:cellName];
    }
//    cell.textLabel.text = self.tableData[indexPath.section][indexPath.row];
//    switch (indexPath.row%3) {
//        case 0:
//            cell.textLabel.textColor = [UIColor greenColor];
//            cell.accessoryType = UITableViewCellAccessoryCheckmark;
//            break;
//        case 1:
//            cell.textLabel.textColor = [UIColor redColor];
//            cell.accessoryType = UITableViewCellAccessoryDetailButton;
//            break;
//        case 2:
//            cell.textLabel.textColor = [UIColor blueColor];
//            cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
//            break;
//        default:
//            break;
//    }
//    cell.imageView.image = [UIImage imageNamed:@"get_info"];
//    cell.detailTextLabel.text = @"Some detailed information";
    Beverage* beverage = self.appDelegate.tableData[indexPath.row];
    cell.textLabel.text = beverage.title;
    cell.detailTextLabel.text = beverage.detail;
     // Configure the cell...
    
    return cell;
}

//-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    return self.titleData[section];
//}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        Beverage* beverage = self.appDelegate.tableData[indexPath.row];
        [self.appDelegate.managedObjectContext deleteObject:beverage];
        NSError* error = nil;
        if ([self.appDelegate.managedObjectContext save:&error]) {
            [self.appDelegate.tableData removeObjectAtIndex:indexPath.row];
            [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        }
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
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


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //NSLog(@"%lu section %lu row is clicked",indexPath.section,indexPath.row);
    ModViewController* modViewController = [[ModViewController alloc] initWithNibName:@"ModViewController" bundle:nil];
    
    
    [self.navigationController pushViewController:modViewController animated:YES];
    
    modViewController.title = @"Edit";
    modViewController.currentBeverage = self.appDelegate.tableData[indexPath.row];
    // Navigation logic may go here, for example:
    // Create the next view controller.
    // *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    //[self.navigationController pushViewController:detailViewController animated:YES];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

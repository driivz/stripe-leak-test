//
//  TESTTableViewController.m
//  stripe-leak-test
//
//  Created by Vitalii Parovishnyk on 2/7/19.
//  Copyright © 2019. All rights reserved.
//

#import "TESTTableViewController.h"

@interface TESTTableViewController ()

@property (nonatomic, weak) IBOutlet UITableView *testTableView;

@end

@implementation TESTTableViewController

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [self.view endEditing:YES];
}

- (void)setTestTableView:(UITableView *)testTableView {
    testTableView.tableFooterView = UIView.new;
    testTableView.rowHeight = 64.0;
    
    _testTableView = testTableView;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StripeTableViewCell"
                                                            forIndexPath:indexPath];
    
    return cell;
}

@end

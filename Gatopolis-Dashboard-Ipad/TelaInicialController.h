//
//  FirstViewController.h
//  Gatopolis-Dashboard-Ipad
//
//  Created by Ezequiel on 21/03/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TelaInicialController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutlet UIView *graphicView;
@end


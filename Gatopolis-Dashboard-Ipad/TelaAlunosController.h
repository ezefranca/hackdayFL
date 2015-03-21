//
//  SecondViewController.h
//  Gatopolis-Dashboard-Ipad
//
//  Created by Ezequiel on 21/03/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TelaAlunosView.h"

@interface TelaAlunosController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet TelaAlunosView *generalView;
@property (strong, nonatomic) IBOutlet UIButton *refresh;
- (IBAction)refresh:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end


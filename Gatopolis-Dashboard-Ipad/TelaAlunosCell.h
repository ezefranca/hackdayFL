//
//  TelaAlunosTableViewCell.h
//  Gatopolis-Dashboard-Ipad
//
//  Created by Ezequiel on 21/03/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TelaAlunosCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *fotoAluno;

@property (strong, nonatomic) IBOutlet UILabel *nomeAluno;

@property (strong, nonatomic) IBOutlet UIView *graficoView;

@end

//
//  SecondViewController.m
//  Gatopolis-Dashboard-Ipad
//
//  Created by Ezequiel on 21/03/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import "TelaAlunosController.h"
#import "TelaAlunosView.h"
#import "TelaAlunosCell.h"
#import "TEAChart.h"

@interface TelaAlunosController ()

@end

@implementation TelaAlunosController

#pragma mark - APP LIFECYCLE

- (void)viewDidLoad {
    [super viewDidLoad];
    _generalView = [[TelaAlunosView alloc]init];
    _generalView = [[[NSBundle mainBundle] loadNibNamed:@"TelaAlunosView" owner:self options:nil] firstObject];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView reloadData];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - TABLEVIEW DELEGATE

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 110;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellID = @"TelaAlunosCell";
    TelaAlunosCell *cell = (TelaAlunosCell *)[tableView dequeueReusableCellWithIdentifier:cellID];
    
    cell.fotoAluno.image = [UIImage imageNamed:@"fundacao_lemann"];
    cell.nomeAluno.text = @"Nome do Fulano";
    
    TEABarChart *barChart = [[TEABarChart alloc] initWithFrame:cell.graficoView.frame];
    barChart.data = @[@2, @7, @1, @8, @2, @8];
    [cell.graficoView addSubview:barChart];
    
    if(!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"TelaAlunosCell" owner:nil options:nil] firstObject];
        cell.selectionStyle = UITableViewCellSeparatorStyleSingleLine;
        //cell.accessoryView = tableViewAcessory;
    }
    
    
//    if(indexPath.row < [_postagem count]){
//        
//        NutriPost *post = [_postagem objectAtIndex:indexPath.row];
//        NSString *imgURL = post.imagemusuario;
//        [cell.profileImage sd_setImageWithURL:[NSURL URLWithString:imgURL]
//                             placeholderImage:[UIImage imageNamed:@"avatar"]
//                                      options:SDWebImageRetryFailed];
//        
//        if (!isVip){
//            cell.destaqueLabel.hidden = TRUE;
//            cell.estrela.hidden = TRUE;
//        }
//        
//        post.titulo = [post.titulo lowercaseString];
//        cell.postTitle.text = [NSString stringWithFormat:@"%@%@",[[post.titulo substringToIndex:1] uppercaseString],[post.titulo substringFromIndex:1]];
//        cell.nomeAutor.text = [post.nome capitalizedString];
//        cell.nutriCRN.text = post.crn;
//        cell.postMessage.text = @"";
//        cell.destaqueLabel.text = @"";
//        if (!post.destaque) {
//            
//            cell.postMessage.text = post.mensagem;
//        }else{
//            cell.estrela.hidden = FALSE;
//            cell.destaqueLabel.text = post.titulodestaque;
//        }
//        //Deixar imagem redonda
//        cell.profileImage.layer.cornerRadius = cell.profileImage.frame.size.width / 2;
//        cell.profileImage.clipsToBounds = YES;
//        //cell.profileImage.layer.masksToBounds = NO;
//    }
//    else if(indexPath.row == [_postagem count]){
//        NSLog(@"%ld---%lu", (long)indexPath.row, (unsigned long)_postagem.count);
//        int pagina = ((indexPath.row) / 10);
//        if(pagina == paginaAnterior) pagina += 1;
//        [DSComunidadeRequester.new getCommunityNutriPostsWithSuccessBlock:^(NSArray *results) {
//            [self.postagem addObjectsFromArray:results];
//            self.view.alpha = 1;
//            // NSLog(@"%lu", (unsigned long)[_postagem count]);
//            [self.freeUserView.tableview reloadData];
//            //[self.freeUserView.tableview reloadData];
//        } errorBlock:^(NSError *error) {
//            NSLog(@"%@", error);
//            self.view.alpha = 1;
//        } :pagina:isVip];
    
//    }
    
    return cell;
}


- (IBAction)refresh:(id)sender {
     [_tableView reloadData];
    
}
@end

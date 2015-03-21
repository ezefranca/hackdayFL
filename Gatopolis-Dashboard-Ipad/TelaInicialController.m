//
//  FirstViewController.m
//  Gatopolis-Dashboard-Ipad
//
//  Created by Ezequiel on 21/03/15.
//  Copyright (c) 2015 Ezequiel França. All rights reserved.
//

#import "TelaInicialController.h"
#import "TelaAlunosCell.h"
#import "TelaInicialCell.h"
#import "PNChart.h"
#import "TEAChart.h"


@interface TelaInicialController (){
    NSArray *imagens;
}

@end

@implementation TelaInicialController


#pragma mark - LIFE CICLE

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    //For Line Chart
    TEABarChart *barChart = [[TEABarChart alloc] initWithFrame:_graphicView.frame];
    barChart.barColors = @[[UIColor orangeColor], [UIColor yellowColor], [UIColor greenColor], [UIColor blueColor]];
    barChart.data = @[@2, @7, @1, @8, @2, @8];
    [self.view addSubview:barChart];//p after loading the view, typically from a nib.
    
    imagens = @[@"foto1",@"foto2",@"foto3",@"foto4",@"foto5",@"foto6",@"foto7",@"foto8",@"foto9",@"foto10",@"foto11"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    [_tableView reloadData];
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
    return 90;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellID = @"TelaAlunosCell";
    TelaInicialCell *cell = (TelaInicialCell *)[tableView dequeueReusableCellWithIdentifier:cellID];
    NSString *img = [imagens objectAtIndex:indexPath.row];
    cell.foto.image = [UIImage imageNamed:img];
    cell.nome.text = @"Nome do Aluno";
    if(!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"TelaInicialCell" owner:nil options:nil] firstObject];
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
    //[_tableView reloadData];
    return cell;
}


@end

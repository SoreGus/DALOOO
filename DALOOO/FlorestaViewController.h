//
//  FlorestaViewController.h
//  DALOOO
//
//  Created by Gustavo Luís Soré on 14/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Jogador.h"
#import "Jogo.h"

@interface FlorestaViewController : UIViewController
@property (weak,nonatomic) Jogador * jogador;
@property (weak, nonatomic) IBOutlet UILabel *nomeJogador;
@property (weak,nonatomic) Jogo * jogo;
@property (weak, nonatomic) IBOutlet UITextView *texto;
- (IBAction)botaoProximo:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *botao;
@property (weak, nonatomic) IBOutlet UIImageView *imagemP1;
@property (weak, nonatomic) IBOutlet UIImageView *imagemP2;
@property (weak, nonatomic) IBOutlet UILabel *labelP1;
@property (weak, nonatomic) IBOutlet UILabel *labelP2;
@property (weak, nonatomic) IBOutlet UIImageView *imagemMonstro;
@property (weak, nonatomic) IBOutlet UILabel *labelMosntro;
- (IBAction)botaoP1:(id)sender;
- (IBAction)botaoP2:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *botaoP1O;
@property (weak, nonatomic) IBOutlet UIButton *botaoP2O;
@property (weak, nonatomic) IBOutlet UIImageView *imagemBatalhaP;
@property (weak, nonatomic) IBOutlet UIImageView *imagemBatalhaM;
@property (weak, nonatomic) IBOutlet UITextView *textoInfoM;
- (IBAction)botaoOk:(id)sender;
- (IBAction)botaoAtacar:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *botaoAtacarO;
@property (weak, nonatomic) IBOutlet UIButton *botaoOkO;



@end

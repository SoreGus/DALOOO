//
//  FlorestaViewController.m
//  DALOOO
//
//  Created by Gustavo Luís Soré on 14/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import "FlorestaViewController.h"



@interface FlorestaViewController ()

@end

int aux = 0;
int escolha;
NSString *dadosP1;
NSString *dadosP2;

@implementation FlorestaViewController
@synthesize jogador,nomeJogador,jogo,botao,imagemP1,imagemP2,labelP1,labelP2,imagemMonstro,labelMosntro,botaoP1O,botaoP2O,
imagemBatalhaM,imagemBatalhaP;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    jogo = [Jogo getInstancia];
    UIImage *imgp1;
    UIImage *imgp2;
    UIImage *imgM;
    if(jogo.jogador.personagem1.tipo == 1){
        imgp1 = [UIImage imageNamed:@"guerreiro.png"];
    }
    else imgp1 = [UIImage imageNamed:@"mago.png"];
    if(jogo.jogador.personagem2.tipo == 1){
        imgp2 = [UIImage imageNamed:@"guerreiro.png"];
    }
    else imgp2 = [UIImage imageNamed:@"mago.png"];
    imgM = [UIImage imageNamed:@"larva.png"];
    [imagemP1 setImage:imgp1];
    [imagemP2 setImage:imgp2];
    [imagemMonstro setImage:imgM];
    imagemP1.hidden = YES;
    imagemP2.hidden = YES;
    imagemMonstro.hidden = YES;
}

- (void)viewDidLoad
{
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"floresta-3d.jpg"]]];
    jogo = [Jogo getInstancia];
    nomeJogador.text = jogo.jogador.nomeJogador;
    _texto.backgroundColor = nil;
    _texto.textColor = [UIColor whiteColor];
    NSString *text1 = @"Bem vindo ";
    _texto.text = text1;
    _texto.editable = NO;
    
    //iniciando os elementos
    labelP1.text = jogo.jogador.personagem1.nome;
    labelP2.text = jogo.jogador.personagem2.nome;
    labelMosntro.text = @"Larva";
    labelP1.textColor = [UIColor whiteColor];
    labelP2.textColor = [UIColor whiteColor];
    labelMosntro.textColor = [UIColor whiteColor];
    labelP1.hidden = YES;
    labelP2.hidden = YES;
    labelMosntro.hidden = YES;
    botaoP1O.hidden = YES;
    botaoP2O.hidden = YES;
    dadosP1 = jogo.jogador.personagem1.toString;
    dadosP2 = jogo.jogador.personagem2.toString;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botaoProximo:(id)sender {
    switch (aux) {
        case 0:
            _texto.text = @"Você esta caminhando na floresta e esbarra numa larva venenosa.";
            imagemMonstro.hidden = NO;
            labelMosntro.hidden = NO;
            aux++;
            break;
        case 1:
            _texto.text = @"Escolha o personagem que vai usar:";
            botao.hidden = YES;
            imagemMonstro.hidden = YES;
            labelMosntro.hidden = YES;
            imagemP1.hidden = NO;
            imagemP2.hidden = NO;
            labelP1.hidden = NO;
            labelP2.hidden = NO;
            botaoP1O.hidden = NO;
            botaoP2O.hidden = NO;
            break;
        case 2:
            labelP1.hidden = YES;
            labelP2.hidden = YES;
            imagemP1.hidden = YES;
            imagemP2.hidden = YES;
            _texto.text = @"hhhhhhh";
            _texto.hidden = NO;
            imagemBatalhaP.hidden = NO;
        default:
            break;
    }
}
- (IBAction)botaoP1:(id)sender {
    _texto.text = [NSString stringWithFormat:@"Informações: %@",dadosP1];
    escolha = 1;
    aux++;
    imagemP2.hidden = YES;
    botao.hidden = NO;
    botaoP1O.hidden = YES;
    botaoP2O.hidden = YES;
}

- (IBAction)botaoP2:(id)sender {
    _texto.text = [NSString stringWithFormat:@"Informações: %@",dadosP2];
    escolha = 2;
    aux++;
    imagemP1.hidden = YES;
    botao.hidden = NO;
    botaoP1O.hidden = YES;
    botaoP2O.hidden = YES;
}
@end

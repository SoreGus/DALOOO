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

@implementation FlorestaViewController
@synthesize jogador,nomeJogador,jogo,botao,botaoP1,botaoP2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"floresta-3d.jpg"]]];
    Jogo *jogo = [Jogo getInstancia];
    nomeJogador.text = jogo.jogador.nomeJogador;
    _texto.backgroundColor = nil;
    _texto.textColor = [UIColor whiteColor];
    NSString *text1 = @"Bem vindo jogador";
    _texto.text = text1;
    _texto.editable = NO;
    [botaoP1 setTitle:jogo.jogador.personagem1.nome forState:UIControlStateNormal];
    [botaoP2 setTitle:jogo.jogador.personagem2.nome forState:UIControlStateNormal];
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
            aux++;
            break;
        case 1:
            _texto.text = @"Escolha o jogador que vai usar:";
            botao.hidden = YES;
            break;
        default:
            break;
    }
}
- (IBAction)botaoPersonagem2Acao:(id)sender {
}

- (IBAction)botaoPersonagem1Acao:(id)sender {
}
@end

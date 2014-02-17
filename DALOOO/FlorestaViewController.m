//
//  FlorestaViewController.m
//  DALOOO
//
//  Created by Gustavo Luís Soré on 14/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import "FlorestaViewController.h"
#import "Monstro.h"



@interface FlorestaViewController ()

@end

int aux = 0;
int escolha;
NSString *dadosP1;
NSString *dadosP2;
UIImage *imgBP;
UIImage *imgBM;
NSString *infoP;
Monstro *larva;

@implementation FlorestaViewController
@synthesize jogador,nomeJogador,jogo,botao,imagemP1,imagemP2,labelP1,labelP2,imagemMonstro,labelMosntro,botaoP1O,botaoP2O,
imagemBatalhaM,imagemBatalhaP,textoInfoM,botaoAtacarO,botaoOkO;

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
    larva = [[Monstro alloc]initWithNome:@"Larva"];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"floresta-3d.jpg"]]];
    jogo = [Jogo getInstancia];
    nomeJogador.text = jogo.jogador.nomeJogador;
    _texto.backgroundColor = nil;
    _texto.textColor = [UIColor whiteColor];
    NSString *text1 = [NSString stringWithFormat:@"Bem vindo %@.",jogo.jogador.nomeJogador];
    _texto.text = text1;
    _texto.editable = NO;
    textoInfoM.editable = NO;
    textoInfoM.textColor = [UIColor whiteColor];
    textoInfoM.backgroundColor = nil;
    
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
    botaoAtacarO.hidden = YES;
    botaoOkO.hidden = YES;
    [botaoAtacarO setTitle:@"Atacar" forState:UIControlStateNormal];
    [botaoOkO setTitle:@"Ok" forState:UIControlStateNormal];
    
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
            _texto.text = infoP;
            _texto.hidden = NO;
            imagemBatalhaP.hidden = NO;
            imgBM = [UIImage imageNamed:@"larva.png"];
            [imagemBatalhaM setImage:imgBM];
            [imagemBatalhaP setImage:imgBP];
            textoInfoM.text = larva.toString;
            [botao setTitle:@"Iniciar Batalha" forState:UIControlStateNormal];
            aux++;
            break;
        case 3:
            botao.hidden = YES;
            botaoAtacarO.hidden = NO;
            break;
        default:
            break;
    }
}
- (IBAction)botaoP1:(id)sender {
    infoP = [NSString stringWithFormat:@"%@",dadosP1];
    escolha = 1;
    aux++;
    imagemP2.hidden = YES;
    botao.hidden = NO;
    botaoP1O.hidden = YES;
    botaoP2O.hidden = YES;
    if(jogo.jogador.personagem1.tipo == 1){
        imgBP = [UIImage imageNamed:@"guerreiro.png"];
    }
    else imgBP = [UIImage imageNamed:@"mago.png"];
}

- (IBAction)botaoP2:(id)sender {
    infoP = [NSString stringWithFormat:@"%@",dadosP2];
    escolha = 2;
    aux++;
    imagemP1.hidden = YES;
    botao.hidden = NO;
    botaoP1O.hidden = YES;
    botaoP2O.hidden = YES;
    if(jogo.jogador.personagem2.tipo == 1){
        imgBP = [UIImage imageNamed:@"guerreiro.png"];
    }
    else imgBP = [UIImage imageNamed:@"mago.png"];
}
- (IBAction)botaoOk:(id)sender {
    if(escolha == 1){
        [larva atacarOutroPersonagem:jogo.jogador.personagem1];
        _texto.text = jogo.jogador.personagem1.toString;
    }
    else{
        [larva atacarOutroPersonagem:jogo.jogador.personagem2];
        _texto.text = jogo.jogador.personagem2.toString;
    }
    if(escolha == 1){
        if(jogo.jogador.personagem1.vida <= 0){
            botaoOkO.hidden = YES;
            botaoAtacarO.hidden = YES;
            imagemBatalhaP.hidden = YES;
            _texto.text = @"Você perdeu.\nLarva ganhou.";
        }
    }
    else{
        if(jogo.jogador.personagem2.vida <= 0){
            botaoOkO.hidden = YES;
            botaoAtacarO.hidden = YES;
            imagemBatalhaP.hidden = YES;
            _texto.text = @"Você perdeu.\nLarva ganhou.";
        }
    }
    if(jogo.jogador.personagem1.vida > 0 && jogo.jogador.personagem2.vida > 0){
    botaoAtacarO.hidden = NO;
    botaoOkO.hidden = YES;
    }
}

- (IBAction)botaoAtacar:(id)sender {
    if(escolha == 1){
        [jogo.jogador.personagem1 atacarOutroPersonagem:larva];
    }
    else [jogo.jogador.personagem2 atacarOutroPersonagem:larva];
    if(larva.vida <= 0){
        botaoAtacarO.hidden = YES;
        imagemBatalhaM.hidden = YES;
        if(escolha == 1)
        textoInfoM.text = [NSString stringWithFormat:@"O personagem\n%@ venceu.",jogo.jogador.personagem1.nome];
        else
        textoInfoM.text = [NSString stringWithFormat:@"O personagem\n%@ venceu.",jogo.jogador.personagem2.nome];
    }
    else{
        textoInfoM.text = larva.toString;
        botaoAtacarO.hidden = YES;
        botaoOkO.hidden = NO;
    }
}
@end

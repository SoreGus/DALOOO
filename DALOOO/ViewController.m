//
//  ViewController.m
//  DALOOO
//
//  Created by Gustavo Luís Soré on 13/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import "ViewController.h"
#import "FlorestaViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize campoNomeP1,campoSeuNome,campoNomeP2,j,jogo;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blackColor]];
    campoSeuNome.delegate = self;
    campoNomeP1.delegate = self;
    campoNomeP2.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField == campoSeuNome){
        [campoSeuNome resignFirstResponder];
        return YES;
    }
    else if(textField == campoNomeP1){
        [campoNomeP1 resignFirstResponder];
        return YES;
    }
    else if(textField == campoNomeP2){
        [campoNomeP2 resignFirstResponder];
        return YES;
    }
    else return NO;
}

- (IBAction)botaoJogar:(id)sender {
    Personagem *p1;
    Personagem *p2;
    if(_segP1O.selectedSegmentIndex == 0){
        p1 = [[Guerreiro alloc]initWithNome:campoNomeP1.text];
    }
    else{
        p1 = [[Mago alloc]initWithNome:campoNomeP1.text];
    }
    if(_segP2O.selectedSegmentIndex == 0){
        p2 = [[Guerreiro alloc]initWithNome:campoNomeP2.text];
    }
    else{
        p2 = [[Mago alloc]initWithNome:campoNomeP2.text];
    }
    j = [[Jogador alloc]initWithDoisPersonagens:campoSeuNome.text andPersonagem1:p1 andPersonagem2:p2];
    NSLog(@"%d",j.personagem2.tipo);
    NSLog(@"%d",j.personagem1.tipo);
    Jogo *jogo = [Jogo getInstancia];
    jogo.jogador = j;
}
@end

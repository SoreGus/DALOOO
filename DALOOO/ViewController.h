//
//  ViewController.h
//  DALOOO
//
//  Created by Gustavo Luís Soré on 13/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Jogador.h"
#import "Guerreiro.h"
#import "Mago.h"
#import "Jogo.h"

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *campoSeuNome;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segP1O;
@property (weak, nonatomic) IBOutlet UITextField *campoNomeP2;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segP2O;
@property (weak, nonatomic) IBOutlet UITextField *campoNomeP1;
@property (weak, nonatomic) IBOutlet Jogo *jogo;
@property (strong,nonatomic) Jogador *j;
- (IBAction)botaoJogar:(id)sender;

@end

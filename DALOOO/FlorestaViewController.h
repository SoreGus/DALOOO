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


@end

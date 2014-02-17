//
//  Jogador.h
//  DALOOO
//
//  Created by Luiz on 13/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Personagem.h"

/*
 * Inteface com o jogador
 */
@interface Jogador : NSObject

@property (strong,nonatomic)NSString * nomeJogador;
@property (strong,nonatomic)Personagem * personagem1;
@property (strong,nonatomic)Personagem * personagem2;

-(id) initWithDoisPersonagens : (NSString *) _nomeJogador andPersonagem1 : (Personagem *) _personagem1 andPersonagem2 : (Personagem *) _personagem2;

-(Personagem *) trocarPersonagem : (int) personagemNumero;
@end

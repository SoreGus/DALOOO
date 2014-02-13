//
//  Jogador.m
//  DALOOO
//
//  Created by Luiz on 13/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import "Jogador.h"

@implementation Jogador

-(id) initWithDoisPersonagens:(NSString *)_nomeJogador andPersonagem1:(Personagem *)_personagem1 andPersonagem2:(Personagem *)_personagem2 {
    
    nomeJogador = _nomeJogador;
    personagem1 = _personagem1;
    personagem2 = _personagem2;
    return self;
}

-(Personagem *) trocarPersonagem:(int)personagemNumero {
    switch (personagemNumero) {
        case 1:
            return personagem1;
            
        case 2:
            return personagem2;
    }
    
    return Nil;
}

@end

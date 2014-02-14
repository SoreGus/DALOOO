//
//  Jogador.m
//  DALOOO
//
//  Created by Luiz on 13/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import "Jogador.h"

@implementation Jogador
@synthesize nomeJogador,personagem1,personagem2;

// Entrada: NSSTring, para o nome do personagem
//  ||      Personagem, primeiro personagem do jogador
//  ||      Personagem, segundo personagem escolhido do jogador
// Saída:   Um objeto jogador, com nome e com os dois personagens já alocados
-(id) initWithDoisPersonagens:(NSString *)_nomeJogador andPersonagem1:(Personagem *)_personagem1 andPersonagem2:(Personagem *)_personagem2 {
    
    nomeJogador = _nomeJogador;
    personagem1 = _personagem1;
    personagem2 = _personagem2;
    return self;
}

// Entrada: int, um inteiro para escolher qual personagem vai ser trocado
// Saída:   se o valor de entrada for 1, o primeiro personagem do jogador
//  ||      se o valor de entrada for 2, o segundo personagem do jogador
//  ||      qualquer outro valor retorna nil
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

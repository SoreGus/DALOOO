//
//  Jogador.h
//  DALOOO
//
//  Created by Luiz on 13/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Personagem.h"

@interface Jogador : NSObject
{
    NSString *nomeJogador;
    Personagem *personagem1;
    Personagem *personagem2;
}

-(id) initWithDoisPersonagens : (NSString *) _nomeJogador andPersonagem1 : (Personagem *) _personagem1 andPersonagem2 : (Personagem *) _personagem2;

-(Personagem *) trocarPersonagem : (int) personagemNumero;
@end

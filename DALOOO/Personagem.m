//
//  Personagem.m
//  DALOOO
//
//  Created by Gustavo Luís Soré on 13/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import "Personagem.h"

@implementation Personagem

@synthesize nome,ataque,defesa,vida,level,tipo;

-(NSString*)toString {
    NSString *desc = [NSString stringWithFormat:@"\nNome: %@\n Ataque: %d\n Defesa: %d\n Level: %d\n Vida: %d", nome, ataque, defesa, level, vida];
    
    return desc;
}

-(BOOL)atacarOutroPersonagem:(Personagem *)personagemAtacado {
    int dano = ataque - personagemAtacado.defesa;
    if(dano > 0){
        personagemAtacado.vida = personagemAtacado.vida - dano;
        return true;
    }
    else return false;
}

@end

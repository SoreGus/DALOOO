//
//  Personagem.m
//  DALOOO
//
//  Created by Gustavo Luís Soré on 13/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import "Personagem.h"

@implementation Personagem

@synthesize nome,ataque,defesa,vida,level;

-(id)initWithNome:(NSString*)n ataque:(int)a defesa:(int)d{
    self = [super init];
    nome = n;
    vida = 100;
    level = 0;
    ataque = a;
    defesa = d;
    return self;
}

-(BOOL)atacar:(Personagem *)adversario{
    if(ataque > [adversario defesa]){
        adversario.vida = adversario.vida - (ataque-adversario.defesa);
        return true;
    }
    else{
        return false;
    }
}

@end

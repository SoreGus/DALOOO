//
//  Jogo.m
//  DALOOO
//
//  Created by Gustavo Luís Soré on 14/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import "Jogo.h"

@implementation Jogo
static Jogo *instancia = nil;
@synthesize jogador;

+ (id)getInstancia{
    if(instancia == nil){
        instancia = [[Jogo alloc]init];
    }
    return instancia;
}

- (id)init{
    if (self = [super init]) {
        jogador = [[Jogador alloc] init];
    }
    return self;
}

@end

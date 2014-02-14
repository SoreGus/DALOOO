//
//  Guerreiro.m
//  DALOOO
//
//  Created by Diego Jurfest Ceccon on 31/12/12.
//  Copyright (c) 2012 MackenzieApple. All rights reserved.
//

#import "Guerreiro.h"

@implementation Guerreiro

-(id)initWithNome:(NSString*)n{
    self = [super init];
    self.nome = n;
    self.ataque = 10;
    self.defesa = 5;
    self.vida = 100;
    self.level = 0;

    return self;
}
@end

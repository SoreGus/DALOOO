//
//  Monstro.m
//  DALOOO
//
//  Created by Diego Jurfest Ceccon on 01/01/13.
//  Copyright (c) 2013 MackenzieApple. All rights reserved.
//

#import "Monstro.h"

@implementation Monstro

-(id)initWithNome:(NSString*)n{
    self = [super init];
    self.nome = n;
    self.ataque = 12;
    self.defesa = 3;
    self.vida = 100;
    self.level = 0;
    
    return self;
}

@end

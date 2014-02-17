//
//  Mago.m
//  DALOOO
//
//  Created by Diego Jurfest Ceccon on 01/01/13.
//  Copyright (c) 2013 MackenzieApple. All rights reserved.
//

#import "Mago.h"

@implementation Mago

-(id)initWithNome:(NSString*)n{
    self = [super init];
    self.nome = n;
    self.ataque = 11;
    self.defesa = 4;
    self.vida = 100;
    self.level = 0;
    self.tipo = 2;
    
    return self;
}

@end

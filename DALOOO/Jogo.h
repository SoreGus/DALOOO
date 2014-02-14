//
//  Jogo.h
//  DALOOO
//
//  Created by Gustavo Luís Soré on 14/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface Jogo : NSObject
@property (nonatomic, retain) Jogador * jogador;

+ (id)getInstancia;

@end

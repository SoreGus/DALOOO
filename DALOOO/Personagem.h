//
//  Personagem.h
//  DALOOO
//
//  Created by Gustavo Luís Soré on 13/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Personagem : NSObject
@property (strong,nonatomic)NSString *nome;
@property int level;
@property int ataque;
@property int defesa;
@property int vida;
@property int tipo;
-(id)initWithNome:(NSString*)n ataque:(int)a defesa:(int)d;
-(BOOL)atacar:(Personagem*)adversario;
-(NSString*)toString;


@end

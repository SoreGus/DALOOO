//
//  ViewController.m
//  DALOOO
//
//  Created by Gustavo Luís Soré on 13/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize campoNomeP1,campoSeuNome,campoNomeP2;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blackColor]];
    campoSeuNome.delegate = self;
    campoNomeP1.delegate = self;
    campoNomeP2.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField == campoSeuNome){
        [campoSeuNome resignFirstResponder];
        return YES;
    }
    else if(textField == campoNomeP1){
        [campoNomeP1 resignFirstResponder];
        return YES;
    }
    else if(textField == campoNomeP2){
        [campoNomeP2 resignFirstResponder];
        return YES;
    }
    else return NO;
}

@end

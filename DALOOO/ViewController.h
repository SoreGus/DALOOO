//
//  ViewController.h
//  DALOOO
//
//  Created by Gustavo Luís Soré on 13/02/14.
//  Copyright (c) 2014 MackenzieApple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *campoSeuNome;
@property (weak, nonatomic) IBOutlet UITextField *campoNomeP1;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segP1;
@property (weak, nonatomic) IBOutlet UITextField *campoNomeP2;

@end

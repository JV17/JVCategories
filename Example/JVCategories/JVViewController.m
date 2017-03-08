//
//  JVViewController.m
//  JVCategories
//
//  Created by Jorge Valbuena on 12/12/2015.
//  Copyright (c) 2015 Jorge Valbuena. All rights reserved.
//

#import "JVViewController.h"
#import <JVCategories/JVCategories.h>


@interface JVViewController ()

@end


@implementation JVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *colors = @[[UIColor yellowColor],
                        [UIColor orangeColor]];
    [self.view addGradientToViewWithColors:colors];
    
    [NSDictionary parseJSONFileWithFileName:@"" withType:@""];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end

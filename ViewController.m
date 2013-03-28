//
//  ViewController.m
//  nhaccuatui
//
//  Created by ios12 on 3/25/13.
//  Copyright (c) 2013 ios12. All rights reserved.
//

#import "ViewController.h"
#import "Singer.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString* _justinString = [[NSBundle mainBundle] pathForResource:@"justin" ofType:@"plist"];
    NSString* _adeleString = [[NSBundle mainBundle] pathForResource:@"adele" ofType:@"plist"];
    NSDictionary* justinDic = [NSDictionary dictionaryWithContentsOfFile:_justinString];
    NSDictionary* adeleDic = [NSDictionary dictionaryWithContentsOfFile:_adeleString];
    dictionary1 = @{@"justin":justinDic,@"adele":adeleDic};
    justin = @"justin";
    adele = @"adele";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
 
}



- (IBAction)find:(id)sender {
        
    NSRange rangeJustin = [justin rangeOfString:self.input.text.lowercaseString];
    NSRange rangeAdele = [adele rangeOfString:self.input.text.lowercaseString];    
    
    if (rangeJustin.length) {
        self.input.text = justin;
        NSObject* _find = [dictionary1 objectForKey:justin];
        self.displayLable.text =[NSString stringWithFormat:@"Singer : %@\n Song : %@",self.input.text.uppercaseString,_find];
        self.imageView.image = [UIImage imageNamed:@"justin.jpg"];
    }
    
    if (rangeAdele.length) {
        self.input.text = adele;
        NSObject* _find = [dictionary1 objectForKey:adele];
        self.displayLable.text =[NSString stringWithFormat:@"Singer : %@\n Song : %@",self.input.text.uppercaseString,_find];
        self.imageView.image = [UIImage imageNamed:@"adele.jpg"];

        }
    if (rangeAdele.length == 0  && rangeJustin.length == 0 ) {
        self.displayLable.text = @"Not Found";
        self.imageView.image = Nil;
    }
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if ([textField isFirstResponder]) {
        [textField resignFirstResponder];
    }
    return YES;
}

@end

//
//  ViewController.h
//  nhaccuatui
//
//  Created by ios12 on 3/25/13.
//  Copyright (c) 2013 ios12. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    NSDictionary* dictionary1;
    NSString* justin;
    NSString* adele;
    NSString* string1 ;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) IBOutlet UITextField *input;
-(IBAction)find:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *displayLable;
@end

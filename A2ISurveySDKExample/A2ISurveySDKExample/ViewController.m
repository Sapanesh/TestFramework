//
//  ViewController.m
//  A2ISurveySampleProject
//
//  Created by ananadmahajan on 3/30/17.
//  Copyright © 2017 mehul shah. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<A2ISurveyDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btnProceedToSurvey;
@property (weak, nonatomic) IBOutlet UIButton *btnLoadSurvey;
@property (weak, nonatomic) IBOutlet UITextField *txtSurvey;

- (IBAction)clickProceedToSurvey:(id)sender;
- (IBAction)clickLoadSurvey:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickLoadSurvey:(id)sender
{
    
    if(_txtSurvey.text.length==0)
    {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"A2I" message:@"Please enter survey code" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            
            [self dismissViewControllerAnimated:YES completion:^{
                
            }];
            
        }];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:^{}];
       
        return;
    
    }
    
    A2ISurveyViewController *cnt = [A2ISurveyViewController new]; // Initializing A2ISurveyViewController
    cnt.delegate = self;
   // cnt.navTitleColor = [UIColor magentaColor];
    cnt.survey_id = _txtSurvey.text;
    UINavigationController *navCnt = [[UINavigationController alloc] initWithRootViewController:cnt];
    [self presentViewController:navCnt animated:YES completion:^{
        
    }];

}
- (IBAction)clickProceedToSurvey:(id)sender
{
    A2ISurveyViewController *cnt = [A2ISurveyViewController new]; // Initializing A2ISurveyViewController
    cnt.delegate = self;
   // cnt.navTitleColor = [UIColor magentaColor];
    cnt.survey_id = @"NJXyEUf6";
    UINavigationController *navCnt = [[UINavigationController alloc] initWithRootViewController:cnt];
    [self presentViewController:navCnt animated:YES completion:^{
        
    }];
    
}

#pragma mark - A2ISurveyDelegate
-(void)A2ISurveyViewControllerDidDismissed
{
   /* //Perform some action here after the dissmisal of A2ISurveyViewController..
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:self.title message:@"A2ISurveyViewControllerDidDismissed Delegate called.." preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okayAction = [UIAlertAction actionWithTitle:@"Okay" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alert addAction:okayAction];
    
    [self presentViewController:alert animated:YES completion:^{
        
    }];*/
}

@end

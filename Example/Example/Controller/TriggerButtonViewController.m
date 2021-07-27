//
//  ViewController.m
//  AppObjc
//
//  Created by Jhennyfer Rodrigues de Oliveira on 22/07/21.
//

#import "TriggerButtonViewController.h"
//#import "SimpleView.h"

@interface TriggerButtonViewController ()

@end

@implementation TriggerButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)loadView {
    [super loadView];
    TriggerButtonView *triggerButtonView = [[TriggerButtonView alloc] init];
    triggerButtonView.viewController = [[TriggerButtonViewController alloc] init];
    triggerButtonView.delegate = self;
    self.view = triggerButtonView;
}

- (void)buttonAction {
    UINavigationController *navigationController = UINavigationController.new;
    ModalViewController *modalViewController = ModalViewController.new;
    navigationController.viewControllers = @[modalViewController];
    navigationController.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:navigationController animated:YES completion:nil];
    
}



@end

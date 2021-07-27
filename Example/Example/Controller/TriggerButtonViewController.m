//
//  ViewController.m
//  AppObjc
//
//  Created by Jhennyfer Rodrigues de Oliveira on 22/07/21.
//

#import "ViewController.h"
//#import "SimpleView.h"

@interface ViewController ()

@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)loadView {
    [super loadView];
    SimpleView *simpleView = [[SimpleView alloc] init];
    simpleView.viewController = [[ViewController alloc] init];
    simpleView.delegate = self;
    self.view = simpleView;
}

- (void)buttonAction {
    NSLog(@"delegate funciona");
    UINavigationController *navigationController = UINavigationController.new;
    ModalViewControllerTest *modalViewControllerTest = ModalViewControllerTest.new;
    [FrameworkHelper.sharedInstance setBlurStyle:lightMode];
    navigationController.viewControllers = @[modalViewControllerTest];
    self.modalTransitioningDelegate = [[ModalTransitioningDelegate alloc] initWithViewController:self
                                                                          presentingViewController: navigationController
                                                                          modalScaleState:ModalScaleStateShort isExpansive:NO
                                       ];
 
    navigationController.modalPresentationStyle = UIModalPresentationCustom;
    navigationController.transitioningDelegate = self.modalTransitioningDelegate;
    [self presentViewController:navigationController animated:YES completion:nil];
    
}



@end

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
    // Instancie aqui a classe ModalCustomization.
    
    
    
    // Escreva aqui todas as customizações da modal chamando os metodos da ModalCustomization.
    
    
    
    // Instancie aqui a classe ModalTransitioningDelegate atribuindo o objeto retornado para o **modalTransitioningDelegate** da controller.
    
    
    
    
    UINavigationController *navigationController = [self configureNavigationController];
    ModalViewController *modalViewController = ModalViewController.new;
    navigationController.viewControllers = @[modalViewController];
    navigationController.modalPresentationStyle = UIModalPresentationCustom;
    
    // Configure navigationItems
    [self configureNavigationItems:modalViewController];
    
    // Atribua aqui o modal transitioning delegate instanciado no passo 7 ao transitionDelegate da navigationController.
    
    
    
    
    [self presentViewController:navigationController animated:YES completion:nil];
}

- (void)configureNavigationItems:(UIViewController*)controller {
    controller.navigationItem.title = @"Title";
    controller.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Left Button" style:UIBarButtonItemStylePlain target:self action:nil];
    controller.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Right Button" style:UIBarButtonItemStylePlain target:self action:nil];
}

- (UINavigationController*)configureNavigationController {
    // Configuring Navigation Bar
    UINavigationController *navigationController = UINavigationController.new;
    navigationController.navigationBar.layer.cornerRadius = 10;
    navigationController.navigationBar.clipsToBounds = true;
    navigationController.navigationBar.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;

    return navigationController;
}

@end

//
//  ViewController.h
//  AppObjc
//
//  Created by Jhennyfer Rodrigues de Oliveira on 22/07/21.
//

#import <UIKit/UIKit.h>
#import "SimpleView.h"
#import "ModalViewControllerTest.h"
@interface ViewController : UIViewController <ButtonDelegate>

@property (nonatomic,retain) SimpleView *simpleView;
@property (strong, nonatomic) ModalTransitioningDelegate * modalTransitioningDelegate;
@end


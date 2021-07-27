//
//  ViewController.h
//  AppObjc
//
//  Created by Jhennyfer Rodrigues de Oliveira on 22/07/21.
//

#import <UIKit/UIKit.h>
#import "TriggerButtonView.h"
#import "ModalViewController.h"
@interface TriggerButtonViewController : UIViewController <ButtonDelegate>

@property (nonatomic,retain) TriggerButtonView *triggerButtonView;

@end


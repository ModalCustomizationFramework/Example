//
//  SimpleView.h
//  AppObjc
//
//  Created by Jhennyfer Rodrigues de Oliveira on 22/07/21.
//

#import <UIKit/UIKit.h>

@protocol ButtonDelegate <NSObject>
@optional
- (void)buttonAction;
// ... other methods here
@end

@class TriggerButtonView;
@interface TriggerButtonView : UIView 

@property (strong, nonatomic) UIButton * button;
@property (weak, nonatomic) id <ButtonDelegate> delegate;
@property (strong, nonatomic) UIViewController * viewController;

@end

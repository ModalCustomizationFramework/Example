//
//  SimpleView.m
//  AppObjc
//
//  Created by Jhennyfer Rodrigues de Oliveira on 22/07/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TriggerButtonView.h"

@interface TriggerButtonView ()

@end

@implementation TriggerButtonView

// synthesize set a get e set method to the variable
@synthesize button;
@synthesize delegate;

- (void)baseInit {

    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
}


- (void)setUpButton {
    
    button.backgroundColor = [UIColor blueColor];
    button.layer.cornerRadius = 10;
    [button setTitle:@("Trigger for modal") forState: normal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    button.translatesAutoresizingMaskIntoConstraints = NO;
}

-(void)buttonAction:(id)sender {
    [self.delegate buttonAction];
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self baseInit];
    }
    self.backgroundColor = [UIColor whiteColor];
    [self addSubview:button];
    [self setUpButton];
    [self setUpButtonConstraints];
    return self;
}

- (void)setUpButtonConstraints {
    [NSLayoutConstraint activateConstraints:@[
        [button.centerXAnchor constraintEqualToAnchor: self.centerXAnchor ],
        [button.centerYAnchor constraintEqualToAnchor: self.centerYAnchor] ,
        [button.widthAnchor constraintEqualToConstant: 200 ],
        [button.heightAnchor  constraintEqualToConstant:30]
     ]
    ];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [self baseInit];
    }
    return self;
}

@end

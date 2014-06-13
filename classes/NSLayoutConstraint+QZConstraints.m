//
//  NSLayoutConstraint+QZConstraints.m
//  
//
//  Created by Mark Schultz on 6/12/14.
//
//

#import "NSLayoutConstraint+QZConstraints.h"

@implementation NSLayoutConstraint (QZConstraints)

+ (NSArray *)constraintsThatFillHorizontallyWithSubview:(UIView *)subview
{
    return [NSLayoutConstraint constraintsWithVisualFormat:@"|[sub]|"
                                                   options:kNilOptions
                                                   metrics:nil
                                                     views:@{ @"sub" : subview }];
}


+ (NSArray *)constraintsThatFillVerticallyWithSubview:(UIView *)subview
{
    return [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[sub]|"
                                                   options:kNilOptions
                                                   metrics:nil
                                                     views:@{ @"sub" : subview }];
}


+ (NSArray *)constraintsThatFillWithSubview:(UIView *)subview
{
    NSMutableArray *array = [NSMutableArray array];
    [array addObjectsFromArray:[self constraintsThatFillHorizontallyWithSubview:subview]];
    [array addObjectsFromArray:[self constraintsThatFillVerticallyWithSubview:subview]];
    return [array copy];
}


+ (NSArray *)constraintsThatCenterSubview:(UIView *)subview
{
    NSLayoutConstraint *horizontal = [self constraintToHorizontallyCenterSubview:subview];
    NSLayoutConstraint *vertical = [self constraintToVerticallyCenterSubview:subview];
    return @[ horizontal, vertical ];
}


+ (NSLayoutConstraint *)constraintAligningView:(UIView *)view withOtherView:(UIView *)otherView onAttribute:(NSLayoutAttribute)attribute
{
    return [NSLayoutConstraint constraintWithItem:view
                                        attribute:attribute
                                        relatedBy:NSLayoutRelationEqual
                                           toItem:otherView
                                        attribute:attribute
                                       multiplier:1.0
                                         constant:0.0];
}


+ (NSLayoutConstraint *)constraintAligningSubview:(UIView *)subview onAttribute:(NSLayoutAttribute)attribute
{
    return [self constraintAligningView:subview withOtherView:subview.superview onAttribute:attribute];
}


+ (NSLayoutConstraint *)constraintToHorizontallyCenterSubview:(UIView *)subview
{
    return [self constraintAligningSubview:subview onAttribute:NSLayoutAttributeCenterX];
}


+ (NSLayoutConstraint *)constraintToVerticallyCenterSubview:(UIView *)subview
{
    return [self constraintAligningSubview:subview onAttribute:NSLayoutAttributeCenterY];
}


+ (NSLayoutConstraint *)constraintWithView:(UIView *)view width:(CGFloat)width
{
    return [NSLayoutConstraint constraintWithItem:view
                                        attribute:NSLayoutAttributeWidth
                                        relatedBy:NSLayoutRelationEqual
                                           toItem:nil
                                        attribute:NSLayoutAttributeNotAnAttribute
                                       multiplier:1.0
                                         constant:width];
}


+ (NSLayoutConstraint *)constraintWithView:(UIView *)view height:(CGFloat)height
{
    return [NSLayoutConstraint constraintWithItem:view
                                        attribute:NSLayoutAttributeHeight
                                        relatedBy:NSLayoutRelationEqual
                                           toItem:nil
                                        attribute:NSLayoutAttributeNotAnAttribute
                                       multiplier:1.0
                                         constant:height];
}


+ (NSArray *)constraintsWithView:(UIView *)view size:(CGSize)size
{
    NSLayoutConstraint *width = [self constraintWithView:view width:size.width];
    NSLayoutConstraint *height = [self constraintWithView:view height:size.height];
    return @[ width, height ];
}

@end

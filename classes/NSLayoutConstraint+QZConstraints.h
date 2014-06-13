//
//  NSLayoutConstraint+QZConstraints.h
//  
//
//  Created by Mark Schultz on 6/12/14.
//
//

#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (QZConstraints)

/*! Creates constraints that horizontally fills a view inside of its superview.  The subview will stretch from the left side of the superview to the right side.
 * \param subview The subview that you want to fill horizontally inside of its superview
 * \returns The constraints that horizontally fill the subview inside of its superview
 */
+ (NSArray *)constraintsThatFillHorizontallyWithSubview:(UIView *)subview;

/*! Creates constraints that vertically fills a view inside of its superview.  The subview will stretch from the top side of the superview to the bottom side.
 * \param subview The subview that you want to fill vertically inside of its superview
 * \returns The constraints that vertically fill the subview inside of its superview
 */
+ (NSArray *)constraintsThatFillVerticallyWithSubview:(UIView *)subview;

/*! Creates constraints that fills a view inside of its superview.  The subview will have the same edges as the superview.
 * \param subview The subview that you want to fill inside of its superview
 * \returns The constraints that fill the subview inside of its superview
 */
+ (NSArray *)constraintsThatFillWithSubview:(UIView *)subview;

/*! Creates constraints that centers a view inside of its superview.  The subview will be centered horizontally and vertically.
 * \param subview The subview that you want to center inside of its superview
 * \returns The constraints that center the subview inside of its superview
 */
+ (NSArray *)constraintsThatCenterSubview:(UIView *)subview;

/*! Creates a constraint that aligns two views by the given attribute.
 * \param view One of the views that you want aligned
 * \param otherView The other view that you want aligned
 * \param attribute The attribute by which you want the two views aligned
 * \returns The constraint that aligns the two views
 */
+ (NSLayoutConstraint *)constraintAligningView:(UIView *)view withOtherView:(UIView *)otherView onAttribute:(NSLayoutAttribute)attribute;

/*! Creates a constraint that aligns a subview with its superview by the given attribute
 * \param subview The subview that you want aligned to its superview
 * \param attribute The attribute by which you want to align the subview with its superview
 * \returns The constraint that aligns the subview with its superview
 */
+ (NSLayoutConstraint *)constraintAligningSubview:(UIView *)subview onAttribute:(NSLayoutAttribute)attribute;

/*! Creates a constraint that centers a view horizontally inside of its superview.
 * \param subview The subview that you want to center horizontally inside of its superview
 * \returns The constraint that horizontally centers the subview inside of its superview
 */
+ (NSLayoutConstraint *)constraintToHorizontallyCenterSubview:(UIView *)subview;

/*! Creates a constraint that centers a view vertically inside of its superview.
 * \param subview The subview that you want to center vertically inside of its superview
 * \returns The constraint that vertically centers the subview inside of its superview
 */
+ (NSLayoutConstraint *)constraintToVerticallyCenterSubview:(UIView *)subview;

/*! Creates a constraint that constrains the width of the view
 * \param view The view whose width you want to constraint
 * \param width The width to which you would like to constrain your view
 * \returns The constraint that constrains the width of the view
 */
+ (NSLayoutConstraint *)constraintWithView:(UIView *)view width:(CGFloat)width;

/*! Creates a constraint that constrains the height of the view
 * \param view The view whose height you want to constraint
 * \param height The height to which you would like to constrain your view
 * \returns The constraint that constrains the height of the view
 */
+ (NSLayoutConstraint *)constraintWithView:(UIView *)view height:(CGFloat)height;

/*! Creates constraints that constrain the size of the view
 * \param view The view whose size you want to constraint
 * \param size The size to which you would like to constrain your view
 * \returns The constraints that constrain the size of the view
 */
+ (NSArray *)constraintsWithView:(UIView *)view size:(CGSize)size;

@end

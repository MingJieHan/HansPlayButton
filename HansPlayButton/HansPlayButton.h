#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    HansPlayButtonStatePause = 0,
    HansPlayButtonStatePlay
} HansPlayButtonState;

@interface HansPlayButton : UIButton{
    CGFloat transformanimationDuration;
    CGFloat positionAnimationDuration;
    UIColor *LineColor;
}
@property (nonatomic) CGFloat transformanimationDuration;
@property (nonatomic) CGFloat positionAnimationDuration;
@property (nonatomic) UIColor *LineColor;
@property (nonatomic, assign) HansPlayButtonState buttonState;
- (instancetype)initWithFrame:(CGRect)frame;
@end

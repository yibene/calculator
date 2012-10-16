//
//  usokoViewController.h
//  calculator
//
//  Created by Cash Hsiao on 12/9/24.
//  Copyright (c) 2012年 Cash Hsiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface usokoViewController : UIViewController {
    NSInteger binaryOperator;
    //0:noop 1:+ 2:- 3:* 4:/ can use enum
    double currentResult;
    double firstOperand;
    bool dotFlag;
    bool negativeFlag;
    bool firstOperandAssigned;
    NSInteger negativeExponent;
}

@property (strong, nonatomic) IBOutlet UILabel *display;

- (IBAction)number0Button:(id)sender;
- (IBAction)number1Button:(id)sender;
- (IBAction)number2Button:(id)sender;
- (IBAction)number3Button:(id)sender;
- (IBAction)number4Button:(id)sender;
- (IBAction)number5Button:(id)sender;
- (IBAction)number6Button:(id)sender;
- (IBAction)number7Button:(id)sender;
- (IBAction)number8Button:(id)sender;
- (IBAction)number9Button:(id)sender;
- (IBAction)dotButton:(id)sender;
- (IBAction)plusSignButton:(id)sender;
- (IBAction)minusSignButton:(id)sender;
- (IBAction)multiplySignButton:(id)sender;
- (IBAction)divideSignButton:(id)sender;
- (IBAction)squareSignButton:(id)sender;
- (IBAction)backSpaceButton:(id)sender;
- (IBAction)clearButton:(id)sender;
- (IBAction)evaluationButton:(id)sender;

@end

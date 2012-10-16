//
//  usokoViewController.m
//  calculator
//
//  Created by Cash Hsiao on 12/9/24.
//  Copyright (c) 2012年 Cash Hsiao. All rights reserved.
//

#import "usokoViewController.h"

@interface usokoViewController ()

@end

@implementation usokoViewController


- (IBAction)clearButton:(id)sender {
    currentResult = 0;
    firstOperand = 0;
    negativeExponent = 0;
    binaryOperator = 0;
    dotFlag = NO;
    firstOperandAssigned = NO;
    self.display.text = [@(currentResult) stringValue];
}

//good habit

#pragma mark -
#pragma mark numberPad

- (IBAction)number0Button:(id)sender {
    if(!dotFlag)
        currentResult *= 10;
    else
        negativeExponent++;
    self.display.text = [@(currentResult) stringValue];
}

- (IBAction)number1Button:(id)sender {
    if(!dotFlag) {
        currentResult *= 10;
        if(!negativeFlag)
            currentResult += 1;
        else
            currentResult -= 1;
    }
    else {
        if(!negativeFlag)
            currentResult += 1*pow(0.1, negativeExponent+1);
        else
            currentResult -= 1*pow(0.1, negativeExponent+1);
        negativeExponent++;
    }
    
    self.display.text = [@(currentResult) stringValue];
}
- (IBAction)number2Button:(id)sender {
    if(!dotFlag) {
        currentResult *= 10;
        if(!negativeFlag)
            currentResult += 2;
        else
            currentResult -= 2;
    }
    else {
        if(!negativeFlag)
            currentResult += 2*pow(0.1, negativeExponent+1);
        else
            currentResult -= 2*pow(0.1, negativeExponent+1);
        negativeExponent++;
    }
    self.display.text = [@(currentResult) stringValue];
}
- (IBAction)number3Button:(id)sender {
    if(!dotFlag) {
        currentResult *= 10;
        if(!negativeFlag)
            currentResult += 3;
        else
            currentResult -= 3;
    }
    else {
        if(!negativeFlag)
            currentResult += 3*pow(0.1, negativeExponent+1);
        else
            currentResult -= 3*pow(0.1, negativeExponent+1);
        negativeExponent++;
    }
    self.display.text = [@(currentResult) stringValue];
}
- (IBAction)number4Button:(id)sender {
    if(!dotFlag) {
        currentResult *= 10;
        if(!negativeFlag)
            currentResult += 4;
        else
            currentResult -= 4;
    }
    else {
        if(!negativeFlag)
            currentResult += 4*pow(0.1, negativeExponent+1);
        else
            currentResult -= 4*pow(0.1, negativeExponent+1);
        negativeExponent++;
    }
    self.display.text = [@(currentResult) stringValue];
}
- (IBAction)number5Button:(id)sender {
    if(!dotFlag) {
        currentResult *= 10;
        if(!negativeFlag)
            currentResult += 5;
        else
            currentResult -= 5;
    }
    else {
        if(!negativeFlag)
            currentResult += 5*pow(0.1, negativeExponent+1);
        else
            currentResult -= 5*pow(0.1, negativeExponent+1);
        negativeExponent++;
    }
    self.display.text = [@(currentResult) stringValue];
}
- (IBAction)number6Button:(id)sender {
    if(!dotFlag) {
        currentResult *= 10;
        if(!negativeFlag)
            currentResult += 6;
        else
            currentResult -= 6;
    }
    else {
        if(!negativeFlag)
            currentResult += 6*pow(0.1, negativeExponent+1);
        else
            currentResult -= 6*pow(0.1, negativeExponent+1);
        negativeExponent++;
    }
    self.display.text = [@(currentResult) stringValue];
}
- (IBAction)number7Button:(id)sender {
    if(!dotFlag) {
        currentResult *= 10;
        if(!negativeFlag)
            currentResult += 7;
        else
            currentResult -= 7;
    }
    else {
        if(!negativeFlag)
            currentResult += 7*pow(0.1, negativeExponent+1);
        else
            currentResult -= 7*pow(0.1, negativeExponent+1);
        negativeExponent++;
    }
    self.display.text = [@(currentResult) stringValue];
}
- (IBAction)number8Button:(id)sender {
    if(!dotFlag) {
        currentResult *= 10;
        if(!negativeFlag)
            currentResult += 8;
        else
            currentResult -= 8;
    }
    else {
        if(!negativeFlag)
            currentResult += 8*pow(0.1, negativeExponent+1);
        else
            currentResult -= 8*pow(0.1, negativeExponent+1);
        negativeExponent++;
    }
    self.display.text = [@(currentResult) stringValue];
}
- (IBAction)number9Button:(id)sender {
    if(!dotFlag) {
        currentResult *= 10;
        if(!negativeFlag)
            currentResult += 9;
        else
            currentResult -= 9;
    }
    else {
        if(!negativeFlag)
            currentResult += 9*pow(0.1, negativeExponent+1);
        else
            currentResult -= 9*pow(0.1, negativeExponent+1);
        negativeExponent++;
    }
    self.display.text = [@(currentResult) stringValue];
}

#pragma mark -
#pragma mark signButton

- (IBAction)dotButton:(id)sender {
    dotFlag = YES;
}
- (IBAction)plusSignButton:(id)sender {
    switch (binaryOperator) {
        case 1:
            currentResult += firstOperand;
            self.display.text = [@(currentResult) stringValue];
            break;
        case 2:
            currentResult = firstOperand-currentResult;
            self.display.text = [@(currentResult) stringValue];
            break;
        case 3:
            currentResult *= firstOperand;
            self.display.text = [@(currentResult) stringValue];
            break;
        case 4:
            if(currentResult!=0) {
                currentResult = firstOperand/currentResult;
                self.display.text = [@(currentResult) stringValue];
            }
            else
                self.display.text = @"FOOL! DON'T DIVIDE BY ZERO!";
            break;
        default:
            break;
    }
    negativeFlag = NO;
    binaryOperator = 1;
    firstOperand = currentResult;
    currentResult = 0;
    dotFlag = NO;
    negativeExponent = 0;
}
- (IBAction)minusSignButton:(id)sender {
    if(currentResult == 0 && !firstOperandAssigned)
        negativeFlag = YES;
    else {
        switch (binaryOperator) {
            case 1:
                currentResult += firstOperand;
                self.display.text = [@(currentResult) stringValue];
                break;
            case 2:
                currentResult = firstOperand-currentResult;
                self.display.text = [@(currentResult) stringValue];
                break;
            case 3:
                currentResult *= firstOperand;
                self.display.text = [@(currentResult) stringValue];
                break;
            case 4:
                if(currentResult!=0) {
                    currentResult = firstOperand/currentResult;
                    self.display.text = [@(currentResult) stringValue];
                }
                else
                    self.display.text = @"FOOL! DON'T DIVIDE BY ZERO!";
                break;
            default:
                break;
        }
        negativeFlag = NO;
        binaryOperator = 2;
        firstOperand = currentResult;
        currentResult = 0;
        dotFlag = NO;
        negativeExponent = 0;
    }
}
- (IBAction)multiplySignButton:(id)sender {
    switch (binaryOperator) {
        case 1:
            currentResult += firstOperand;
            self.display.text = [@(currentResult) stringValue];
            break;
        case 2:
            currentResult = firstOperand-currentResult;
            self.display.text = [@(currentResult) stringValue];
            break;
        case 3:
            currentResult *= firstOperand;
            self.display.text = [@(currentResult) stringValue];
            break;
        case 4:
            if(currentResult!=0) {
                currentResult = firstOperand/currentResult;
                self.display.text = [@(currentResult) stringValue];
            }
            else
                self.display.text = @"FOOL! DON'T DIVIDE BY ZERO!";
            break;
        default:
            break;
    }
    negativeFlag = NO;
    binaryOperator = 3;
    firstOperand = currentResult;
    currentResult = 0;
    dotFlag = NO;
    negativeExponent = 0;
}
- (IBAction)divideSignButton:(id)sender {
    switch (binaryOperator) {
        case 1:
            currentResult += firstOperand;
            self.display.text = [@(currentResult) stringValue];
            break;
        case 2:
            currentResult = firstOperand-currentResult;
            self.display.text = [@(currentResult) stringValue];
            break;
        case 3:
            currentResult *= firstOperand;
            self.display.text = [@(currentResult) stringValue];
            break;
        case 4:
            if(currentResult!=0) {
                currentResult = firstOperand/currentResult;
                self.display.text = [@(currentResult) stringValue];
            }
            else
                self.display.text = @"FOOL! DON'T DIVIDE BY ZERO!";
            break;
        default:
            break;
    }
    negativeFlag = NO;
    binaryOperator = 4;
    firstOperand = currentResult;
    currentResult = 0;
    dotFlag = NO;
    negativeExponent = 0;
}
- (IBAction)squareSignButton:(id)sender {
    currentResult = sqrt(currentResult);
    binaryOperator = 0;
    dotFlag = NO;
    negativeFlag = NO;
    firstOperand = 0;
    self.display.text = [@(currentResult) stringValue];
}
- (IBAction)backSpaceButton:(id)sender {
    
}

- (IBAction)evaluationButton:(id)sender {
    switch (binaryOperator) {
        case 1:
            currentResult += firstOperand;
            self.display.text = [@(currentResult) stringValue];
            break;
        case 2:
            currentResult = firstOperand-currentResult;
            self.display.text = [@(currentResult) stringValue];
            break;
        case 3:
            currentResult *= firstOperand;
            self.display.text = [@(currentResult) stringValue];
            break;
        case 4:
            if(currentResult!=0) {
                currentResult = firstOperand/currentResult;
                self.display.text = [@(currentResult) stringValue];
            }
            else
                self.display.text = @"FOOL! DON'T DIVIDE BY ZERO!";
            break;
        default:
            break;
    }
    
    currentResult = 0;
    binaryOperator = 0;
    dotFlag = NO;
    negativeFlag = NO;
    negativeExponent = 0;
}

@end

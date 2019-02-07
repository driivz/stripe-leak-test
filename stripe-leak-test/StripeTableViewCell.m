//
//  StripeTableViewCell.m
//  stripe-leak-test
//
//  Created by Vitalii Parovishnyk on 2/7/19.
//  Copyright © 2019. All rights reserved.
//

@import Stripe;

#import "StripeTableViewCell.h"

@interface StripeTableViewCell () <STPPaymentCardTextFieldDelegate>

@property (nonatomic, weak) STPPaymentCardTextField *paymentField;

@end

@implementation StripeTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    STPPaymentCardTextField *paymentField = [[STPPaymentCardTextField alloc] initWithFrame:self.bounds];
    [self.contentView addSubview:paymentField];
    _paymentField = paymentField;
    self.paymentField.delegate = self;
}

@end

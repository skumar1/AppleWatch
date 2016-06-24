//
//  InterfaceController.m
//  Watch Extension
//
//  Created by Santosh Kumar on 6/23/16.
//  Copyright © 2016 Santosh Kumar. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController(){
    int count;
}
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *countdownLbl;
@property (weak, nonatomic) IBOutlet WKInterfaceButton *increaseBtn;
@property (weak, nonatomic) IBOutlet WKInterfaceButton *decreaseBtn;
@property (weak, nonatomic) IBOutlet WKInterfaceButton *resetBtn;


@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    count = 0;
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}
- (IBAction)increasedClicked {
    self.countdownLbl.text = [NSString stringWithFormat:@"%i",++count];
}
- (IBAction)decreasedClicked {
    self.countdownLbl.text = [NSString stringWithFormat:@"%i",--count];
}

- (IBAction)resetClicked {
    count = 0;
    self.countdownLbl.text = [NSString stringWithFormat:@"%i",count];
}

@end




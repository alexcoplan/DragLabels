//
//  DragViewController.h
//  Drag
//
//  Created by Alex Coplan on 14/12/2011.
//  Copyright 2011 Alex Coplan. All rights reserved.
//  This sample code in answer to a Stack Overflow Question: http://stackoverflow.com/a/8503851/840973
//

#import <UIKit/UIKit.h>
#import "DragLabel.h"

@interface DragViewController : UIViewController {
    DragLabel *label1;
    DragLabel *label2;
    DragLabel *label3;
    
    NSArray *draglabels;    
}

@property (nonatomic, retain) IBOutlet DragLabel *label1;
@property (nonatomic, retain) IBOutlet DragLabel *label2;
@property (nonatomic, retain) IBOutlet DragLabel *label3;

@end

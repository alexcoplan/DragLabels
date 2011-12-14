//
//  DragViewController.m
//  Drag
//
//  Created by Alex Coplan on 14/12/2011.
//  Copyright 2011 Alex Coplan. All rights reserved.
//  This sample code in answer to a Stack Overflow Question: http://stackoverflow.com/a/8503851/840973
//

#import "DragViewController.h"

@implementation DragViewController
@synthesize label1;
@synthesize label2;
@synthesize label3;

- (void)dealloc
{
    [label1 release];
    [label2 release];
    [label3 release];
    [draglabels release];
    [super dealloc];
}

- (void)viewDidLoad
{
    draglabels = [[NSArray alloc] initWithObjects:label1, label2, label3, nil];
    for (DragLabel *label in draglabels) {
        label.dragging = NO;
    }
    
    [super viewDidLoad];
}

- (void)movedLabel:(DragLabel *)label touchloc:(CGPoint)touchloc {
    float val = (label.center.y - touchloc.y)/10;
    label.text = [NSString stringWithFormat:@"%g",val];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    CGPoint touchloc = [[touches anyObject] locationInView:self.view];
    for (DragLabel *label in draglabels) {
        if (CGRectContainsPoint(label.frame, touchloc)) {
            label.dragging = YES;
            [self movedLabel:label touchloc:touchloc];
        }
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (DragLabel *label in draglabels) {
        if (label.dragging) {
            CGPoint touchloc = [[touches anyObject] locationInView:self.view];
            [self movedLabel:label touchloc:touchloc];
        }
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    for (DragLabel *label in draglabels) {
        label.dragging = NO;
    }
}

- (void)viewDidUnload
{
    [self setLabel1:nil];
    [self setLabel2:nil];
    [self setLabel3:nil];
    [super viewDidUnload];
}

@end
//
//  DragAppDelegate.h
//  Drag
//
//  Created by Alex Coplan on 14/12/2011.
//  Copyright 2011 Alex Coplan. All rights reserved.
//  This sample code in answer to a Stack Overflow Question: http://stackoverflow.com/a/8503851/840973
//

#import <UIKit/UIKit.h>

@class DragViewController;

@interface DragAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet DragViewController *viewController;

@end

//
//  DragLabel.h
//  Drag
//
//  Created by Alex Coplan on 14/12/2011.
//  Copyright 2011 Alex Coplan. All rights reserved.
//  This sample code in answer to a Stack Overflow Question: http://stackoverflow.com/a/8503851/840973
//

#import <Foundation/Foundation.h>


@interface DragLabel : UILabel {
    BOOL dragging;
}

@property (assign) BOOL dragging;

@end
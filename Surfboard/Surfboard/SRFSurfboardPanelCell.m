//
//  SRFSurfboardPanel.m
//  Surfboard
//
//  Created by Moshe on 8/12/14.
//  Copyright (c) 2014 Moshe Berman. All rights reserved.
//

#import "SRFSurfboardPanelCell.h"

/**
 *  A class extension for SRFSurfboardPanelCell
 */

@interface SRFSurfboardPanelCell ()

@end

@implementation SRFSurfboardPanelCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)prepareForReuse
{
    self.textView.text = self.panel.text;
    
    self.imageView.image = self.panel.image;
    
    [self.actionButton setTitle:self.panel.buttonTitle forState:UIControlStateNormal];
    
    //  Hide the button on panels with no title.
    self.actionButton.hidden = (self.panel.buttonTitle == nil);
}

- (void)setPanel:(SRFSurfboardPanel *)panel
{
    _panel = panel;
    
    [self prepareForReuse];
}

- (void)layoutSubviews
{
    self.actionButton.layer.cornerRadius = 5.0f;
    self.actionButton.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.2];

}

@end

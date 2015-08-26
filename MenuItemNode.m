//
//  MenuItemNode.m
//  Party
//
//  Created by Adnan Aftab on 8/25/15.
//  Copyright (c) 2015 CX. All rights reserved.
//

#import "MenuItemNode.h"
#import "DSMultilineLabelNode.h"

@interface MenuItemNode ()
@property (nonatomic, strong) DSMultilineLabelNode *titleNode;
@end

@implementation MenuItemNode

+ (instancetype)menuNode
{
    MenuItemNode *menuNode = [MenuItemNode new];
    [menuNode setPath:CGPathCreateWithRoundedRect(CGRectMake(0, 0, 100, 100), 50, 50, nil)];
    menuNode.strokeColor = menuNode.fillColor = [UIColor redColor];
    return menuNode;
}
+ (instancetype)menuNodeWithTitle:(NSString *)title
{
    MenuItemNode *menuNode = [self menuNode];
    menuNode.title = title;
    return menuNode;
}
- (void)setTitle:(NSString *)title
{
    _title = title;
    if (!_titleNode)
    {
        _titleNode = [[DSMultilineLabelNode alloc] initWithFontNamed:@"HelveticaNeue-Bold"];
        _titleNode.fontSize = 12;
        _titleNode.paragraphWidth = 80;
        _titleNode.name = @"title";
        _titleNode.fontColor = [UIColor whiteColor];
        _titleNode.position = CGPointZero;
        _titleNode.verticalAlignmentMode = SKLabelVerticalAlignmentModeCenter;
        _titleNode.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeCenter;
        _titleNode.userInteractionEnabled = NO;
        [self addChild:_titleNode];
    }
    _titleNode.text = title;
}
- (void)addChild:(SKNode *)node
{
    node.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    [super addChild:node];
}

@end

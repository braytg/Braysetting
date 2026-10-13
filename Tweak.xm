#import <UIKit/UIKit.h>

// Scoped to the Settings process by BraySettings.plist.
// This version is deliberately appearance-only and reversible.
// iOS 16.6 may use private subclasses; not every view will be restyled.
static UIColor *BSBackground(void) {
    return [UIColor colorWithRed:0.035 green:0.035 blue:0.043 alpha:1.0];
}
static UIColor *BSCard(void) {
    return [UIColor colorWithRed:0.115 green:0.115 blue:0.125 alpha:1.0];
}

%hook UITableView
- (void)layoutSubviews {
    %orig;
    if (@available(iOS 13.0, *)) {
        self.backgroundColor = BSBackground();
        self.separatorColor = [UIColor colorWithWhite:0.25 alpha:1.0];
    }
}
%end

%hook UITableViewCell
- (void)layoutSubviews {
    %orig;
    self.backgroundColor = BSCard();
    self.contentView.backgroundColor = [UIColor clearColor];
    self.tintColor = [UIColor whiteColor];
}
%end

%hook UINavigationBar
- (void)layoutSubviews {
    %orig;
    self.tintColor = [UIColor whiteColor];
    if (@available(iOS 13.0, *)) {
        self.standardAppearance.backgroundColor = BSBackground();
        self.scrollEdgeAppearance.backgroundColor = BSBackground();
    }
}
%end

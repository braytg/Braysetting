#import <UIKit/UIKit.h>

// Experimental, reversible appearance-only hook. No system files are overwritten.
%hook UITableView
- (void)layoutSubviews {
    %orig;
    if (![NSStringFromClass([self class]) isEqualToString:@"UITableView"]) return;
    self.backgroundColor = [UIColor colorWithRed:0.055 green:0.055 blue:0.06 alpha:1];
    self.separatorColor = [UIColor colorWithWhite:0.23 alpha:1];
}
%end

%hook UITableViewCell
- (void)layoutSubviews {
    %orig;
    self.backgroundColor = [UIColor colorWithRed:0.12 green:0.12 blue:0.13 alpha:1];
    self.contentView.backgroundColor = UIColor.clearColor;
}
%end

%hook UINavigationBar
- (void)layoutSubviews {
    %orig;
    self.tintColor = UIColor.whiteColor;
}
%end

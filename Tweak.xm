#include <notify.h>

@interface UIImage (TIPoofFixIconAddons)
- (UIImage *)_applicationIconImageForFormat:(int)format precomposed:(BOOL)precomposed;
@end

// Yes, this is the name of the app delegate :S
%hook SBSettingsApp
%new
- (void)applicationDidEnterBackground:(UIApplication *)application {
	notify_post("com.libhide.hiddeniconschanged");
}
%end

// I am bothered by bad indentation :P
%hook Poof
%new
- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
	return 1;
}
%end
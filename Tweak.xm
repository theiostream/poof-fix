#include <notify.h>

// Yes, this is the name of the app delegate :S
%hook SBSettingsApp
%new
- (void)applicationDidEnterBackground:(UIApplication *)application {
	notify_post("com.libhide.hiddeniconschanged");
}
%end
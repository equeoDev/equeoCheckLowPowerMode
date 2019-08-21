/********* equeoCheckLowPowerMode.m Cordova Plugin Implementation *******/

#import "equeoCheckLowPowerMode.h"
#import <Cordova/CDV.h>

@implementation equeoCheckLowPowerMode

- (void)check:(CDVInvokedUrlCommand*)command
{
	NSLog(@"BATTERY CHECK CALLED");
	CDVPluginResult* pluginResult = nil;
	if([[NSProcessInfo processInfo] isLowPowerModeEnabled]) {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
	}
	else {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
	}
	[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
@end

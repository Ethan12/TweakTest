@interface SBScreenShotter
    - (void)saveScreenshot:(_Bool)arg1;
@end

#define PLIST_PATH @"/var/mobile/Library/Preferences/com.ethanmcmullan.tweaktestpreference.plist"
 
inline bool GetPrefBool(NSString *key)
{
return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}


/*%hook TweakStats

-(int)enabled {
	if(GetPrefBool(@"kEnabled")){
	showDialog = @"SHOW";
	return 1;
	}
	return %orig;
}

%end*/
  
%hook SBScreenShotter
  
- (void)saveScreenshot:(_Bool)arg1
{
	if(GetPrefBool(@"kEnabled")){
    NSString *notifName = @"TweakTest!";
    NSString *message = [NSString stringWithFormat:@"%@ has been called successfully!", notifName];
    UIAlertView *myAlert = [[UIAlertView alloc]initWithTitle:notifName message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [myAlert show];
    [myAlert release];
     
    %orig;
    }

    %orig;
}
  
%end

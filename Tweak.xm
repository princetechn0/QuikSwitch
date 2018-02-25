#import "controller.h"

%hook SBLockHardwareButtonActions


//Play/Pause via Double Press
-(void)performDoublePressActions {

		[[%c(SBMediaController) sharedInstance] togglePlayPause];

		} //hi


//Default - Skip Song Via Triple Press
-(void)performTriplePressActions {
		[[%c(SBMediaController) sharedInstance] changeTrack: 1];
		}

%end




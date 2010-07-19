//
//  Cwm_FjordAppDelegate.h
//  Cwm Fjord
//
//  Created by Fletcher Tomalty on 10-04-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Cwm_FjordAppDelegate : NSObject {
	NSString *string;
	NSString *processedString;
	NSMutableCharacterSet *absentChars;
	
	IBOutlet NSTextField *textField;
	IBOutlet NSTextField *charCount;
	IBOutlet NSTextField *missingChars;
}
- (void)setString:(NSString *)x;
- (void)updateCharCount;
- (void)updateMissingChars;
@end

//
//  Cwm_FjordAppDelegate.m
//  Cwm Fjord
//
//  Created by Fletcher Tomalty on 10-04-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Cwm_FjordAppDelegate.h"

@implementation Cwm_FjordAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	[self setString:@"Cwm fjord bank glyphs vext quiz."];
}
- (void)setString:(NSString *)x {
	string = x;
	[self updateMissingChars];
	[self updateCharCount];
}
- (void)updateCharCount {
	alpha_only_string = string;
	alpha_only_string = [alpha_only_string stringByMatching:[RKRegex regexWithRegexString:@"[^a-zA-Z]" options:0] replace:RKReplaceAll withReferenceString:@""];
	[charCount setIntValue:[alpha_only_string length]];
}
- (void)updateMissingChars {
	if ([string length] > 0) {
		[missingChars setStringValue:[[@"abcdefghijklmnopqrstuvwxyz" componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:[string lowercaseString]]] componentsJoinedByString:@""]];
	}
	else {
		[missingChars setStringValue:@"abcdefghijklmnopqrstuvwxyz"];
	}

}
@end

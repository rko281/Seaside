﻿"Filed out from Dolphin Smalltalk"!

JQWidget subclass: #JQPosition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQPosition guid: (GUID fromString: '{229f0c18-5bd5-4c10-b352-7573b2f5a7b2}')!

JQPosition comment: ''!

!JQPosition categoriesForClass!Utility! !

!JQPosition methodsFor!

at: aString	"Defines which position on the target element to align the positioned element against: 'horizontal vertical' alignment. See the my option for full details on possible values. Percentage offsets are relative to the target element."	self optionAt: 'at' put: aString!

bgiframe: aBoolean	"Applies the bgiframe plugin when set to true. Only applies when bgiframe is actually loaded, nothing happens otherwise."	self optionAt: 'bgiframe' put: aBoolean!

by: aFunction	"When specified the actual property setting is delegated to this callback. Receives a single parameter which is a hash of top and left values for the position that should be set."	self optionAt: 'by' put: aFunction!

collision: aString	"When the positioned element overflows the window in some direction, move it to an alternative position. Similar to my and at, this accepts a single value or a pair for horizontal/vertical, eg. 'flip', 'fit', 'fit flip', 'fit none'. * ''flip'': to the opposite side and the collision detection is run again to see if it will fit. If it won't fit in either position, the center option should be used as a fall back. * ''fit'': so the element keeps in the desired direction, but is re-positioned so it fits. * ''none'': not do collision detection."	self optionAt: 'collision' put: aString!

method	^ 'position'!

my: aString	"Defines which position on the element being positioned to align with the target element: 'horizontal vertical' alignment. A single value such as 'right' will be normalized to 'right center', 'top' will be normalized to 'center top' (following CSS convention). Acceptable horizontal values: 'left', 'center', 'right'. Acceptable vertical values: 'top', 'center', 'bottom'. Example: 'left top' or 'center center'. Each dimension can also contain offsets, in pixels or percent, e.g., 'right+10 top-25%'. Percentage offsets are relative to the element being positioned."	self optionAt: 'my' put: aString!

of: aSelector	"Element to position against. You can use a browser event object contains pageX and pageY values. Example: '#top-menu'"	self optionAt: 'of' put: aSelector!

using: aJSObject	"When specified, the actual property setting is delegated to this callback. Receives two parameters: The first is a hash of top and left values for the position that should be set and can be forwarded to .css() or .animate().The second provides feedback about the position and dimensions of both elements, as well as calculations to their relative position. Both target and element have these properties: element, left, top, width, height. In addition, there's horizontal, vertical and important, giving you twelve potential directions like { horizontal: 'center', vertical: 'left', important: 'horizontal' }"	self optionAt: 'using' put: aJSObject asFunction!

within: aString	"Element to position within, affecting collision detection. If you provide a selector or jQuery object, the first matching element will be used."	self optionAt: 'within' put: aString! !

!JQPosition categoriesForMethods!
at:!options/generated!public! !
bgiframe:!options/generated!public! !
by:!options/generated!public! !
collision:!options/generated!public! !
method!accessing!public! !
my:!options/generated!public! !
of:!options/generated!public! !
using:!options/generated!public! !
within:!options/generated!public! !
!


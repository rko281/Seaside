"Filed out from Dolphin Smalltalk"!

WAAnchorTag subclass: #WAPopupAnchorTag
	instanceVariableNames: 'windowTitle features'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPopupAnchorTag guid: (GUID fromString: '{d2b2cbd5-fdc8-4f7b-af0d-1597f3c2505d}')!

WAPopupAnchorTag comment: 'I am used to create a link that opens in a new window. A name can be specified using #name: and many features can be configured. Note, that not all features are supported on all web browser platforms. If Javascript is disabled the link will behave like any other anchor.Most of the time a popup-anchor is created like this:	html popupAnchor		callback: [ self session presenter			show: WACounter new ];		with: ''Open the counter within a new window''This code creates a new render-loop and displays a new instance of WACounter within the new browser window.		'!

!WAPopupAnchorTag categoriesForClass!Tags! !

!WAPopupAnchorTag methodsFor!

dependent: aBoolean	"Specifies whether the new window is closed as well when the parent window gets closed."	features at: #dependent put: aBoolean!

extent: aPoint	"Specifies the width and height of the new window."	self width: aPoint x; height: aPoint y!

featureString	^ String streamContents:  [ :stream | 		features associations do: [ :association | 				stream					nextPutAll: association key;					nextPut: $=.				stream nextPutAll: (association value == true 						ifTrue: [ 'yes' ]						ifFalse: [							association value == false 								ifTrue: [ 'no' ]								ifFalse: [ association value greaseString ] ]) ]			separatedBy: [ stream nextPut: $, ] ]!

height: anInteger	"Specifies the height of the new window."	features at: #height put: anInteger!

initialize	super initialize.	windowTitle := '_blank'.	features := GRSmallDictionary2 new!

left: anInteger	"Specifies the x coordinate of the top left corner of the new window. "	features at: #left put: anInteger!

location: aBoolean	"Specifies whether to display the address line in the new window."	features at: #location put: aBoolean!

menubar: aBoolean	"Specifies whether to display the browser menu bar."	features at: #menubar put: aBoolean!

position: aPoint	"Specifies the x and y coordinates of the top left corner of the new window."	self left: aPoint x; top: aPoint y!

resizable: aBoolean	"Specifies whether the new window is resizable."	features at: #resizable put: aBoolean!

scrollbars: aBoolean	"Specifies whether the new window should have scrollbars."	features at: #scrollbars put: aBoolean!

status: aBoolean	"Specifies whether to display the browser status bar."	features at: #status put: aBoolean!

toolbar: aBoolean	"Specifies whether to display the toolbar in the new window."	features at: #toolbar put: aBoolean!

top: anInteger	"Specifies the y coordinate of the top left corner of the new window. "	features at: #top put: anInteger!

width: anInteger	"Specifies the width of the new window."	features at: #width put: anInteger!

windowTitle	^ windowTitle!

windowTitle: aString	"String specifying the name of the new window. If a window with this name already exists, then the new content will be displayed in that existing window, rather than creating a new one."	windowTitle := aString!

with: aBlock	self onClick: 'window.open(this.href,' , self windowTitle printString , ',' , self featureString printString , ');return false'.	super with: aBlock! !

!WAPopupAnchorTag categoriesForMethods!
dependent:!features!public! !
extent:!features!public! !
featureString!private! !
height:!features!public! !
initialize!initialization!public! !
left:!features!public! !
location:!features!public! !
menubar:!features!public! !
position:!features!public! !
resizable:!features!public! !
scrollbars:!features!public! !
status:!features!public! !
toolbar:!features!public! !
top:!features!public! !
width:!features!public! !
windowTitle!accessing!public! !
windowTitle:!accessing!public! !
with:!public! !
!


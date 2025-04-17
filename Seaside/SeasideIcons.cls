"Filed out from Dolphin Smalltalk"!

Object subclass: #SeasideIcons
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SeasideIcons guid: (GUID fromString: '{3d5ff56f-618d-4b85-8947-604e7f1c4c6a}')!

SeasideIcons comment: ''!

!SeasideIcons categoriesForClass!Kernel-Objects! !

!SeasideIcons class methodsFor!

grease

	^##((TextTileIcon text: 'Gr' fontName: 'Georgia' color: Color darkGreen)
		textcolor: Color white;
		fontStyle: #italic;
		yourself)!

jQuery
	^##(TextTileIcon text: 'JQ' fontName: 'Arial Narrow' color: Color darkBlue)!

scriptaculous

	^##((TextTileIcon text: 'Sc' fontName: 'Georgia' color: Color cadetBlue)
		textcolor: Color white;
		fontStyle: #italic;
		yourself)!

seaside

	^##((TextTileIcon text: $\x2B50 fontName: 'Segoe UI Emoji')
		textcolor: Color orangeRed;
		yourself)
!

start

	^(##(TextTileIcon text: $\x1F7E2 fontName: 'Segoe UI Emoji')
		textcolor: Color green;
		yourself)!

stop

	^(##(TextTileIcon text: $\x1F534 fontName: 'Segoe UI Emoji')
		textcolor: Color red;
		yourself)! !

!SeasideIcons class categoriesForMethods!
grease!constants!public! !
jQuery!constants!public! !
scriptaculous!constants!public! !
seaside!constants!public! !
start!constants!public! !
stop!constants!public! !
!


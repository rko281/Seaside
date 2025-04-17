"Filed out from Dolphin Smalltalk"!

WACallback subclass: #WAActionCallback
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAActionCallback guid: (GUID fromString: '{4c705280-0e52-4126-baac-bee4ffb20c68}')!

WAActionCallback comment: ''!

!WAActionCallback categoriesForClass!Callbacks! !

!WAActionCallback methodsFor!

block: aZeroOrOneArgBlock	block := aZeroOrOneArgBlock!

evaluateWithArgument: anObject	block valueWithPossibleArguments: (Array with: anObject).	self signalRenderNotification!

isEnabledFor: aRequestContext	^ aRequestContext request isXmlHttpRequest not!

priority	^ 5!

signalRenderNotification	WARenderNotification signal! !

!WAActionCallback categoriesForMethods!
block:!accessing!public! !
evaluateWithArgument:!evaluation!public! !
isEnabledFor:!public!testing! !
priority!accessing!public! !
signalRenderNotification!evaluation!public! !
!


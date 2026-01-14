"Filed out from Dolphin Smalltalk"!

WASubmitButtonTag subclass: #WACancelButtonTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACancelButtonTag guid: (GUID fromString: '{1774d96a-20c0-485b-9794-3d92dccb1c42}')!

WACancelButtonTag comment: 'Creates a Cancel submit button.'!

!WACancelButtonTag categoriesForClass!Seaside-Canvas-Tags! !

!WACancelButtonTag methodsFor!

callback: aBlock	self name: (self storeCallback: (WACancelActionCallback on: aBlock))! !

!WACancelButtonTag categoriesForMethods!
callback:!callbacks!public! !
!


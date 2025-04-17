"Filed out from Dolphin Smalltalk"!

WASubmitButtonTag subclass: #WACancelButtonTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACancelButtonTag guid: (GUID fromString: '{8947dc9e-3a01-4285-ae5a-de536f7e9856}')!

WACancelButtonTag comment: 'Creates a Cancel submit button.'!

!WACancelButtonTag categoriesForClass!Tags! !

!WACancelButtonTag methodsFor!

callback: aBlock	self name: (self storeCallback: (WACancelActionCallback on: aBlock))! !

!WACancelButtonTag categoriesForMethods!
callback:!callbacks!public! !
!


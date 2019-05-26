"Filed out from Dolphin Smalltalk 7"!

WASubmitButtonTag subclass: #WACancelButtonTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACancelButtonTag guid: (GUID fromString: '{5283ff55-4eb1-461a-b19a-afb73249b577}')!
WACancelButtonTag comment: 'Creates a Cancel submit button.'!
!WACancelButtonTag categoriesForClass!Seaside-Canvas-Tags! !
!WACancelButtonTag methodsFor!

callback: aBlock	self name: (self storeCallback: (WACancelActionCallback on: aBlock))! !
!WACancelButtonTag categoriesFor: #callback:!callbacks!public! !


"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFunctionalTest guid: (GUID fromString: '{b2d48a3e-f4c8-41ad-b1d4-36523916a967}')!

WAFunctionalTest comment: ''!

!WAFunctionalTest categoriesForClass!Unclassified! !

!WAFunctionalTest methodsFor!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	anHtmlRoot title: self class name greaseString! !

!WAFunctionalTest categoriesForMethods!
updateRoot:!public!updating! !
!

!WAFunctionalTest class methodsFor!

isFunctionalTest	^ self name ~= #WAFunctionalTest! !

!WAFunctionalTest class categoriesForMethods!
isFunctionalTest!public!testing! !
!


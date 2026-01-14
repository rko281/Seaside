"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFunctionalTest guid: (GUID fromString: '{369485b7-f1b4-4cab-ac29-1fdc43f25d8d}')!

WAFunctionalTest comment: ''!

!WAFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

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


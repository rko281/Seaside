"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFunctionalTest guid: (GUID fromString: '{4caad3de-222a-48b7-ab60-aa08a9d5050e}')!
WAFunctionalTest comment: ''!
!WAFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAFunctionalTest methodsFor!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	anHtmlRoot title: self class name greaseString! !
!WAFunctionalTest categoriesFor: #updateRoot:!public!updating! !

!WAFunctionalTest class methodsFor!

isFunctionalTest	^ self name ~= #WAFunctionalTest! !
!WAFunctionalTest class categoriesFor: #isFunctionalTest!public!testing! !


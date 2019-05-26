"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFunctionalTest guid: (GUID fromString: '{fa21fe3e-4986-430f-864c-3135936bb8ff}')!
WAFunctionalTest comment: ''!
!WAFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAFunctionalTest methodsFor!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	anHtmlRoot title: self class name greaseString! !
!WAFunctionalTest categoriesFor: #updateRoot:!public!updating! !

!WAFunctionalTest class methodsFor!

isFunctionalTest	^ self name ~= #WAFunctionalTest! !
!WAFunctionalTest class categoriesFor: #isFunctionalTest!public!testing! !


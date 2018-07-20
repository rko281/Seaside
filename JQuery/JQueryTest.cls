"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #JQueryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQueryTest guid: (GUID fromString: '{7b217479-83f6-4a48-b749-4e76cde134f8}')!
JQueryTest comment: ''!
!JQueryTest categoriesForClass!JQuery-Tests-Core-Unit! !
!JQueryTest methodsFor!

function	"Answers the name of the jQuery function. This can be either '$' or 'jQuery' or any other user chosen name. This makes sure the tests run in any case."	^ JQuery functionName!

jQuery	^ JQueryClass context: self renderContext!

jQuery: anObject	^ self jQuery with: anObject! !
!JQueryTest categoriesFor: #function!accessing!public! !
!JQueryTest categoriesFor: #jQuery!accessing!public! !
!JQueryTest categoriesFor: #jQuery:!accessing!public! !

!JQueryTest class methodsFor!

isAbstract	^ self name = #JQueryTest!

packageNamesUnderTest	^ #('JQuery-Core')! !
!JQueryTest class categoriesFor: #isAbstract!public!testing! !
!JQueryTest class categoriesFor: #packageNamesUnderTest!accessing!public! !


"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #JQueryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQueryTest guid: (GUID fromString: '{d892a9e6-fece-448a-b986-9824e304ee52}')!
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


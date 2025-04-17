"Filed out from Dolphin Smalltalk"!

JSObjectTest subclass: #JQueryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQueryTest guid: (GUID fromString: '{c7d94321-9b10-4d49-8768-322e86cb3e6f}')!

JQueryTest comment: ''!

!JQueryTest categoriesForClass!Unit! !

!JQueryTest methodsFor!

function	"Answers the name of the jQuery function. This can be either '$' or 'jQuery' or any other user chosen name. This makes sure the tests run in any case."	^ JQuery functionName!

jQuery	^ JQueryClass context: self renderContext!

jQuery: anObject	^ self jQuery with: anObject! !

!JQueryTest categoriesForMethods!
function!accessing!public! !
jQuery!accessing!public! !
jQuery:!accessing!public! !
!

!JQueryTest class methodsFor!

isAbstract	^ self name = #JQueryTest!

packageNamesUnderTest	^ #('JQuery-Core')! !

!JQueryTest class categoriesForMethods!
isAbstract!public!testing! !
packageNamesUnderTest!accessing!public! !
!


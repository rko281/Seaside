"Filed out from Dolphin Smalltalk"!

JSObjectTest subclass: #JQueryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQueryTest guid: (GUID fromString: '{1c41bfac-9f48-4030-86c4-53dd39b1d9a9}')!

JQueryTest comment: ''!

!JQueryTest categoriesForClass!JQuery-Tests-Core-Unit! !

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


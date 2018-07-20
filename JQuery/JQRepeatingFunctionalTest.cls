"Filed out from Dolphin Smalltalk 7"!

JQFunctionalTest subclass: #JQRepeatingFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQRepeatingFunctionalTest guid: (GUID fromString: '{accef576-e2b9-40c9-8f26-7fe28b3a1023}')!
JQRepeatingFunctionalTest comment: ''!
!JQRepeatingFunctionalTest categoriesForClass!JQuery-Tests-Core-Functional! !
!JQRepeatingFunctionalTest methodsFor!

renderContentOn: html	html paragraph		script: (html jQuery this load			html: [ :r | self renderTimeOn: r ];			interval: 1 seconds);			with: [ self renderTimeOn: html ]!

renderTimeOn: html	html render: DateAndTime now!

selectors	^ #(renderContentOn: renderTimeOn:)!

title	^ 'Repeated Ajax Calls'! !
!JQRepeatingFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQRepeatingFunctionalTest categoriesFor: #renderTimeOn:!public!rendering! !
!JQRepeatingFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQRepeatingFunctionalTest categoriesFor: #title!accessing!public! !


"Filed out from Dolphin Smalltalk 7"!

JQFunctionalTest subclass: #JQRepeatingFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQRepeatingFunctionalTest guid: (GUID fromString: '{22246b21-9c32-4544-bfd6-afd179245310}')!
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


"Filed out from Dolphin Smalltalk"!

JQFunctionalTest subclass: #JQRepeatingFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQRepeatingFunctionalTest guid: (GUID fromString: '{bcbdad33-8400-4a68-81ad-5672f0762f03}')!

JQRepeatingFunctionalTest comment: ''!

!JQRepeatingFunctionalTest categoriesForClass!Functional! !

!JQRepeatingFunctionalTest methodsFor!

renderContentOn: html	html paragraph		script: (html jQuery this load			html: [ :r | self renderTimeOn: r ];			interval: 1 seconds);			with: [ self renderTimeOn: html ]!

renderTimeOn: html	html render: DateAndTime now!

selectors	^ #(renderContentOn: renderTimeOn:)!

title	^ 'Repeated Ajax Calls'! !

!JQRepeatingFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderTimeOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
!


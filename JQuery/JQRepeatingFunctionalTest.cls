"Filed out from Dolphin Smalltalk"!

JQFunctionalTest subclass: #JQRepeatingFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQRepeatingFunctionalTest guid: (GUID fromString: '{ea833c51-30e2-435c-948f-2732d5fd1157}')!

JQRepeatingFunctionalTest comment: ''!

!JQRepeatingFunctionalTest categoriesForClass!JQuery-Tests-Core-Functional! !

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


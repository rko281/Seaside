"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WATrailFunctionalTest
	instanceVariableNames: 'component trail'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATrailFunctionalTest guid: (GUID fromString: '{abca89f1-1320-4fb2-b8c3-2ae9f51adb00}')!
WATrailFunctionalTest comment: ''!
!WATrailFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WATrailFunctionalTest methodsFor!

children	^ Array with: trail with: component!

initialize	super initialize.	component := WATrailTestComponent new.	trail := WATrail on: component!

renderContentOn: html	html render: trail.	html div: component! !
!WATrailFunctionalTest categoriesFor: #children!hooks!public! !
!WATrailFunctionalTest categoriesFor: #initialize!initialization!public! !
!WATrailFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !


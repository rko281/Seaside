"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WATrailFunctionalTest
	instanceVariableNames: 'component trail'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATrailFunctionalTest guid: (GUID fromString: '{ffb50f1a-290a-4181-89d8-ffd984af1c71}')!
WATrailFunctionalTest comment: ''!
!WATrailFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WATrailFunctionalTest methodsFor!

children	^ Array with: trail with: component!

initialize	super initialize.	component := WATrailTestComponent new.	trail := WATrail on: component!

renderContentOn: html	html render: trail.	html div: component! !
!WATrailFunctionalTest categoriesFor: #children!hooks!public! !
!WATrailFunctionalTest categoriesFor: #initialize!initialization!public! !
!WATrailFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !


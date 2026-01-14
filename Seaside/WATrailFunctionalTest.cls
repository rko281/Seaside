"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WATrailFunctionalTest
	instanceVariableNames: 'component trail'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATrailFunctionalTest guid: (GUID fromString: '{c8c39197-ee86-41e3-9729-3902d48f816a}')!

WATrailFunctionalTest comment: ''!

!WATrailFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WATrailFunctionalTest methodsFor!

children	^ Array with: trail with: component!

initialize	super initialize.	component := WATrailTestComponent new.	trail := WATrail on: component!

renderContentOn: html	html render: trail.	html div: component! !

!WATrailFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
!


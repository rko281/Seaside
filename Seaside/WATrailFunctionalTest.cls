"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WATrailFunctionalTest
	instanceVariableNames: 'component trail'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATrailFunctionalTest guid: (GUID fromString: '{00372335-7f34-4b74-9391-753bc5845666}')!

WATrailFunctionalTest comment: ''!

!WATrailFunctionalTest categoriesForClass!Unclassified! !

!WATrailFunctionalTest methodsFor!

children	^ Array with: trail with: component!

initialize	super initialize.	component := WATrailTestComponent new.	trail := WATrail on: component!

renderContentOn: html	html render: trail.	html div: component! !

!WATrailFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
!


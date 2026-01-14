"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAThree
	instanceVariableNames: 'counter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAThree guid: (GUID fromString: '{c6f603a3-8ec3-44f8-8a1c-9c5579a59e19}')!

WAThree comment: 'I am a component that needs a session.'!

!WAThree categoriesForClass!Seaside-REST-Examples! !

!WAThree methodsFor!

children	^ Array with: counter!

initialize	super initialize.	counter := WACounter new!

renderContentOn: html	html heading: 'Three'.	html render: counter!

updateUrl: anUrl	super updateUrl: anUrl.	anUrl addToPath: 'three'! !

!WAThree categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
updateUrl:!hooks!public! !
!


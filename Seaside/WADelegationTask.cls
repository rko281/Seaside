"Filed out from Dolphin Smalltalk"!

WATask subclass: #WADelegationTask
	instanceVariableNames: 'component1 component2'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADelegationTask guid: (GUID fromString: '{77994ccf-77ed-4809-b3fb-3a5a16336f82}')!

WADelegationTask comment: ''!

!WADelegationTask categoriesForClass!Unclassified! !

!WADelegationTask methodsFor!

children	"Even if we component1 and component2, we have to return them as children as otherwise their decorations are not properly backtracked. See WADecorationTest."		^ Array with: component1 with: component2!

go	self call: component1 onAnswer: [ :a1 |		self call: component2 onAnswer: [ ] ]!

initialize	super initialize.	component1 := WAFormDialog new		addMessage: 'Step 1';		yourself.	component2 := WAFormDialog new		addMessage: 'Step 2';		yourself! !

!WADelegationTask categoriesForMethods!
children!hooks!public! !
go!public!running! !
initialize!initialization!public! !
!


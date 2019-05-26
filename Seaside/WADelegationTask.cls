"Filed out from Dolphin Smalltalk 7"!

WATask subclass: #WADelegationTask
	instanceVariableNames: 'component1 component2'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADelegationTask guid: (GUID fromString: '{d425ba66-e6a2-4f61-a61b-96e9c22de206}')!
WADelegationTask comment: ''!
!WADelegationTask categoriesForClass!Seaside-Tests-Functional! !
!WADelegationTask methodsFor!

children	"Even if we component1 and component2, we have to return them as children as otherwise their decorations are not properly backtracked. See WADecorationTest."		^ Array with: component1 with: component2!

go	self call: component1 onAnswer: [ :a1 |		self call: component2 onAnswer: [ ] ]!

initialize	super initialize.	component1 := WAFormDialog new		addMessage: 'Step 1';		yourself.	component2 := WAFormDialog new		addMessage: 'Step 2';		yourself! !
!WADelegationTask categoriesFor: #children!hooks!public! !
!WADelegationTask categoriesFor: #go!public!running! !
!WADelegationTask categoriesFor: #initialize!initialization!public! !


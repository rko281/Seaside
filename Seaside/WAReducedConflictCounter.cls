"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAReducedConflictCounter
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAReducedConflictCounter guid: (GUID fromString: '{8c1f4bc5-e505-4a8e-9973-9263bcb6d837}')!

WAReducedConflictCounter comment: 'I am a fake implementation of RcCounter, which is a Gemstone Smalltalk class that provides a counter object with reduced transaction conflicts.'!

!WAReducedConflictCounter categoriesForClass!Cache! !

!WAReducedConflictCounter methodsFor!

increment	count := count + 1!

initialize	super initialize.	count := 0!

value	^ count! !

!WAReducedConflictCounter categoriesForMethods!
increment!public! !
initialize!initialization!public! !
value!public! !
!


"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAReducedConflictCounter
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAReducedConflictCounter guid: (GUID fromString: '{03e9e344-7b74-47c8-b34f-9930ccff4824}')!

WAReducedConflictCounter comment: 'I am a fake implementation of RcCounter, which is a Gemstone Smalltalk class that provides a counter object with reduced transaction conflicts.'!

!WAReducedConflictCounter categoriesForClass!Seaside-Core-Cache! !

!WAReducedConflictCounter methodsFor!

increment	count := count + 1!

initialize	super initialize.	count := 0!

value	^ count! !

!WAReducedConflictCounter categoriesForMethods!
increment!public! !
initialize!initialization!public! !
value!public! !
!


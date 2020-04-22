"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAReducedConflictCounter
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAReducedConflictCounter guid: (GUID fromString: '{61dd7104-c51e-4d90-8aab-03f4a1a40eaa}')!
WAReducedConflictCounter comment: 'I am a fake implementation of RcCounter, which is a Gemstone Smalltalk class that provides a counter object with reduced transaction conflicts.'!
!WAReducedConflictCounter categoriesForClass!Seaside-Core-Cache! !
!WAReducedConflictCounter methodsFor!

increment	count := count + 1!

initialize	super initialize.	count := 0!

value	^ count! !
!WAReducedConflictCounter categoriesFor: #increment!public! !
!WAReducedConflictCounter categoriesFor: #initialize!initialization!public! !
!WAReducedConflictCounter categoriesFor: #value!public! !


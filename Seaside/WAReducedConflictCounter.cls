"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAReducedConflictCounter
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAReducedConflictCounter guid: (GUID fromString: '{2a02f44b-6ace-4dce-b152-872f1240f6bf}')!
WAReducedConflictCounter comment: 'I am a fake implementation of RcCounter'!
!WAReducedConflictCounter categoriesForClass!Seaside-Core-Cache! !
!WAReducedConflictCounter methodsFor!

increment	count := count + 1!

initialize	super initialize.	count := 0!

value	^ count! !
!WAReducedConflictCounter categoriesFor: #increment!public! !
!WAReducedConflictCounter categoriesFor: #initialize!initialization!public! !
!WAReducedConflictCounter categoriesFor: #value!public! !


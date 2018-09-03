"Filed out from Dolphin Smalltalk 7"!

GRAbstractSequenceableCollectionTest subclass: #GRIntervalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRIntervalTest guid: (GUID fromString: '{0e44bf3f-8c22-4eb9-bb9d-c6dc8b76d2ef}')!
GRIntervalTest comment: ''!
!GRIntervalTest categoriesForClass!Grease-Tests-Core! !
!GRIntervalTest methodsFor!

allowsDuplicateValues	^ false!

arbitraryCollection	^ 1 to: 4!

collectionClass	^ Interval!

emptyCollection	^ 1 to: 0!

isExtensible	^ false!

isHomogeneous	^ true!

isInitializable	^ false!

isSequenced	^ false!

isUnique	^ false!

testBeginsWithSubCollection	self assert: ((-5 to: 10 by: 3) beginsWithSubCollection: (-5 to: 7 by: 3)).	self assert: ((-5 to: 10 by: 3) beginsWithSubCollection: (-5 to: 10 by: 3)).	self deny: ((-5 to: 10 by: 3) beginsWithSubCollection: (-8 to: 10 by: 3))!

testEndsWithSubCollection	self assert: ((-5 to: 10 by: 3) endsWithSubCollection: (-2 to: 10 by: 3)).	self assert: ((-5 to: 10 by: 3) endsWithSubCollection: (-5 to: 10 by: 3)).	self deny: ((-5 to: 10 by: 3) endsWithSubCollection: (-5 to: 13 by: 3))! !
!GRIntervalTest categoriesFor: #allowsDuplicateValues!configuration!public! !
!GRIntervalTest categoriesFor: #arbitraryCollection!configuration!public! !
!GRIntervalTest categoriesFor: #collectionClass!configuration!public! !
!GRIntervalTest categoriesFor: #emptyCollection!configuration!public! !
!GRIntervalTest categoriesFor: #isExtensible!public!testing/ansi! !
!GRIntervalTest categoriesFor: #isHomogeneous!public!testing! !
!GRIntervalTest categoriesFor: #isInitializable!public!testing/ansi! !
!GRIntervalTest categoriesFor: #isSequenced!public!testing/ansi! !
!GRIntervalTest categoriesFor: #isUnique!public!testing! !
!GRIntervalTest categoriesFor: #testBeginsWithSubCollection!public!tests! !
!GRIntervalTest categoriesFor: #testEndsWithSubCollection!public!tests! !


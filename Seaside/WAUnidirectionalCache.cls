"Filed out from Dolphin Smalltalk 7"!

WACache subclass: #WAUnidirectionalCache
	instanceVariableNames: 'dictionary'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUnidirectionalCache guid: (GUID fromString: '{92015a26-8275-4118-a25d-df5a75277a97}')!
WAUnidirectionalCache comment: 'I support only key -> value mappings and never forget anything.'!
!WAUnidirectionalCache categoriesForClass!Seaside-Core-Cache! !
!WAUnidirectionalCache methodsFor!

at: aKey ifAbsent: aBlock	^ dictionary at: aKey ifAbsent: aBlock!

at: aKey put: anObject	^ dictionary at: aKey put: anObject!

clear	dictionary removeAll!

errorAlreadyMapped	self error: 'Already mapped'!

initialize	super initialize.	dictionary := Dictionary new!

keyAtValue: anObject ifAbsent: aBlock	self shouldNotImplement!

keysAndValuesDo: aTwoArgumentBlock	dictionary keysAndValuesDo: aTwoArgumentBlock!

postCopy	super postCopy.	dictionary := dictionary copy!

remove: anObject	self shouldNotImplement!

size	^ dictionary size!

store: anObject	| candidateKey |	[ 		| written |		written := false.		candidateKey := WAKeyGenerator current keyOfLength: self keySize.		dictionary at: candidateKey ifAbsentPut: [ written := true. anObject ].		written ] whileFalse.	^ candidateKey! !
!WAUnidirectionalCache categoriesFor: #at:ifAbsent:!accessing!public! !
!WAUnidirectionalCache categoriesFor: #at:put:!public!putting! !
!WAUnidirectionalCache categoriesFor: #clear!public! !
!WAUnidirectionalCache categoriesFor: #errorAlreadyMapped!private! !
!WAUnidirectionalCache categoriesFor: #initialize!initialization!public! !
!WAUnidirectionalCache categoriesFor: #keyAtValue:ifAbsent:!accessing!public! !
!WAUnidirectionalCache categoriesFor: #keysAndValuesDo:!enumerating!public! !
!WAUnidirectionalCache categoriesFor: #postCopy!copying!public! !
!WAUnidirectionalCache categoriesFor: #remove:!public!removing! !
!WAUnidirectionalCache categoriesFor: #size!accessing!public! !
!WAUnidirectionalCache categoriesFor: #store:!public!putting! !


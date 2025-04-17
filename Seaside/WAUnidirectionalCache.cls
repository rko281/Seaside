"Filed out from Dolphin Smalltalk"!

WACache subclass: #WAUnidirectionalCache
	instanceVariableNames: 'dictionary'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUnidirectionalCache guid: (GUID fromString: '{f541bfd3-d18b-4497-bdac-a45edc975b87}')!

WAUnidirectionalCache comment: 'I support only key -> value mappings and never forget anything.'!

!WAUnidirectionalCache categoriesForClass!Cache! !

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

!WAUnidirectionalCache categoriesForMethods!
at:ifAbsent:!accessing!public! !
at:put:!public!putting! !
clear!public! !
errorAlreadyMapped!private! !
initialize!initialization!public! !
keyAtValue:ifAbsent:!accessing!public! !
keysAndValuesDo:!enumerating!public! !
postCopy!copying!public! !
remove:!public!removing! !
size!accessing!public! !
store:!public!putting! !
!


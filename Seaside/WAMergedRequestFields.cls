"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAMergedRequestFields
	instanceVariableNames: 'delegates'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMergedRequestFields guid: (GUID fromString: '{ae6c10d6-a9c6-4345-9485-9a243878b444}')!
WAMergedRequestFields comment: 'Provides a read-only view onto multiple dictionaries. Note that this can lead to to duplicated keys that can only retrieved by iterating over all the associations.'!
!WAMergedRequestFields categoriesForClass!Seaside-Core-HTTP! !
!WAMergedRequestFields methodsFor!

allAt: aKey	^ Array streamContents: [ :stream |		delegates do: [ :each | stream nextPutAll: (each allAt: aKey) ] ]!

allAt: aKey ifAbsent: absentBlock	| result |	result := self allAt: aKey.	^ result isEmpty		ifTrue: [ absentBlock value ]		ifFalse: [ result ]!

associationsDo: aBlock	delegates do: [ :each | each associationsDo: aBlock ]!

at: aKey	^ self at: aKey ifAbsent: [ self errorKeyNotFound ]!

at: aKey ifAbsent: aBlock	delegates do: [ :each |		each			at: aKey			ifPresent: [ :value | ^ value ] ].	^ aBlock value!

at: aKey ifPresent: aBlock	delegates do: [ :each |		each			at: aKey			ifPresent: [ :value | ^ aBlock value: value ] ].	^ nil!

do: aBlock	delegates do: [ :each | each do: aBlock ]!

errorKeyNotFound	^ nil!

includesKey: aKey	^ delegates anySatisfy: [ :each | each includesKey: aKey ]!

initializeOn: anArray	self initialize.	delegates := anArray!

isEmpty	^ delegates allSatisfy: [ :each | each isEmpty ]!

keys	^ Array streamContents: [ :stream |		delegates do: [ :each | stream nextPutAll: each keys ] ]!

keysAndValuesDo: aBlock	delegates do: [ :each | each keysAndValuesDo: aBlock ]!

keysDo: aBlock	delegates do: [ :each | each keysDo: aBlock ]!

size	^ delegates inject: 0 into: [ :result :each | result + each size ]!

values	^ Array streamContents: [ :stream |		delegates do: [ :each | stream nextPutAll: each values ] ]! !
!WAMergedRequestFields categoriesFor: #allAt:!enumerating!public! !
!WAMergedRequestFields categoriesFor: #allAt:ifAbsent:!enumerating!public! !
!WAMergedRequestFields categoriesFor: #associationsDo:!enumerating!public! !
!WAMergedRequestFields categoriesFor: #at:!accessing!public! !
!WAMergedRequestFields categoriesFor: #at:ifAbsent:!accessing!public! !
!WAMergedRequestFields categoriesFor: #at:ifPresent:!accessing!public! !
!WAMergedRequestFields categoriesFor: #do:!enumerating!public! !
!WAMergedRequestFields categoriesFor: #errorKeyNotFound!private! !
!WAMergedRequestFields categoriesFor: #includesKey:!public!testing! !
!WAMergedRequestFields categoriesFor: #initializeOn:!initialization!public! !
!WAMergedRequestFields categoriesFor: #isEmpty!public!testing! !
!WAMergedRequestFields categoriesFor: #keys!enumerating!public! !
!WAMergedRequestFields categoriesFor: #keysAndValuesDo:!enumerating!public! !
!WAMergedRequestFields categoriesFor: #keysDo:!enumerating!public! !
!WAMergedRequestFields categoriesFor: #size!accessing!public! !
!WAMergedRequestFields categoriesFor: #values!enumerating!public! !

!WAMergedRequestFields class methodsFor!

new	self error: self name , ' is created with #on:'!

on: anArray	^ self basicNew initializeOn: anArray! !
!WAMergedRequestFields class categoriesFor: #new!instance creation!public! !
!WAMergedRequestFields class categoriesFor: #on:!instance creation!public! !


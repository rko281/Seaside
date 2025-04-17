"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAMergedRequestFields
	instanceVariableNames: 'delegates'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMergedRequestFields guid: (GUID fromString: '{751235af-ab71-4f6c-a73d-f4f941e160af}')!

WAMergedRequestFields comment: 'Provides a read-only view onto multiple dictionaries. Note that this can lead to to duplicated keys that can only retrieved by iterating over all the associations.'!

!WAMergedRequestFields categoriesForClass!HTTP! !

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

!WAMergedRequestFields categoriesForMethods!
allAt:!enumerating!public! !
allAt:ifAbsent:!enumerating!public! !
associationsDo:!enumerating!public! !
at:!accessing!public! !
at:ifAbsent:!accessing!public! !
at:ifPresent:!accessing!public! !
do:!enumerating!public! !
errorKeyNotFound!private! !
includesKey:!public!testing! !
initializeOn:!initialization!public! !
isEmpty!public!testing! !
keys!enumerating!public! !
keysAndValuesDo:!enumerating!public! !
keysDo:!enumerating!public! !
size!accessing!public! !
values!enumerating!public! !
!

!WAMergedRequestFields class methodsFor!

new	self error: self name , ' is created with #on:'!

on: anArray	^ self basicNew initializeOn: anArray! !

!WAMergedRequestFields class categoriesForMethods!
new!instance creation!public! !
on:!instance creation!public! !
!


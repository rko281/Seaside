"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #GRSmallDictionary
	instanceVariableNames: 'size keys values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRSmallDictionary guid: (GUID fromString: '{8ebc614a-598f-4502-af08-2a2e747defc2}')!
GRSmallDictionary comment: 'I am an implementation of a dictionary. Compared to other dictionaries I am very efficient for small sizes, speed- and space-wise. I also mantain the order in which elements are added when iterating. My implementation features some ideas from the RefactoringBrowser.'!
!GRSmallDictionary categoriesForClass!Grease-Core-Collections! !
!GRSmallDictionary methodsFor!

add: anAssociation	self at: anAssociation key put: anAssociation value.	^ anAssociation!

addAll: aDictionary	aDictionary keysAndValuesDo: [ :key :value | self add: key -> value ].	^ aDictionary!

associations	"Answer a Collection containing the receiver's associations."	| result |	result := WriteStream on: (Array new: self size).	self associationsDo: [ :assoc | result nextPut: assoc ].	^ result contents!

associationsDo: aBlock	self keysAndValuesDo: [ :key :value | aBlock value: key -> value ]!

at: aKey	"Answer the value associated with aKey. Raise an exception, if no such key is defined."	^ self at: aKey ifAbsent: [ self errorKeyNotFound ]!

at: aKey ifAbsent: aBlock	"Answer the value associated with aKey. Evaluate aBlock, if no such key is defined."	| index |	index := self findIndexFor: aKey.	^ index = 0		ifFalse: [ values at: index ]		ifTrue: [ aBlock value ]!

at: aKey ifAbsentPut: aBlock	"Answer the value associated with aKey. Evaluate aBlock, if no such key is defined and store the return value."	| index |	index := self findIndexFor: aKey.	^ index = 0		ifFalse: [ values at: index ]		ifTrue: [ self privateAt: aKey put: aBlock value ]!

at: aKey ifPresent: aBlock	"Lookup aKey in the receiver. If it is present, answer the value of evaluating the given block with the value associated with the key. Otherwise, answer nil."	| index |	index := self findIndexFor: aKey.	^ index = 0 ifFalse: [ aBlock value: (values at: index) ]!

at: aKey put: aValue	"Set the value of aKey to be aValue."	| index |	index := self findIndexFor: aKey.	^ index = 0		ifFalse: [ values at: index put: aValue ]		ifTrue: [ self privateAt: aKey put: aValue ]!

do: aBlock	1 to: size do: [ :index | aBlock value: (values at: index) ]!

errorKeyNotFound	self error: 'Key not found'!

findIndexFor: aKey	1 to: size do: [ :index |		(keys at: index) = aKey			ifTrue: [ ^ index ] ].	^ 0!

grow	| newKeys newValues |	newKeys := Array new: 2 * size.	newValues := Array new: 2 * size.	1 to: size do: [ :index |		newKeys at: index put: (keys at: index).		newValues at: index put: (values at: index) ].	keys := newKeys.	values := newValues!

includesKey: aKey	"Answer whether the receiver has a key equal to aKey."	^ (self findIndexFor: aKey) ~= 0!

initialize: anInteger	self initialize.	size := 0.	keys := Array new: anInteger.	values := Array new: anInteger!

isCollection	^ true!

isEmpty	^ size = 0!

keys	^ keys copyFrom: 1 to: size!

keysAndValuesDo: aBlock	1 to: size do: [ :index | aBlock value: (keys at: index) value: (values at: index) ]!

keysDo: aBlock	1 to: size do: [ :each | aBlock value: (keys at: each) ]!

postCopy	super postCopy.	keys := keys copy.	values := values copy!

printOn: aStream	super printOn: aStream.		aStream nextPut: $(.	self size <= 100		ifTrue: [			| first |			first := true.			self keysAndValuesDo: [ :key :value |				"keysAndValuesDo:separatedBy: would be nice"				first					ifTrue: [ first := false ]					ifFalse: [ aStream space ].				aStream					print: key;					nextPutAll: '->';									print: value ] ]		ifFalse: [			aStream				nextPutAll: 'size ';				print: self size ].	aStream nextPut: $)	!

privateAt: aKey put: aValue	size = keys size ifTrue: [ self grow ].	keys at: (size := size + 1) put: aKey.	^ values at: size put: aValue!

removeIndex: index	| value |	value := values at: index.	index to: size - 1 do:			[ :i | 			keys at: i put: (keys at: i + 1).			values at: i put: (values at: i + 1) ].	keys at: size put: nil.	values at: size put: nil.	size := size - 1.	^ value!

removeKey: aKey	"Remove aKey from the receiver, raise an exception if the element is missing."	^ self removeKey: aKey ifAbsent: [ self errorKeyNotFound ]!

removeKey: aKey ifAbsent: aBlock	"Remove aKey from the receiver, evaluate aBlock if the element is missing."	| index |	index := self findIndexFor: aKey.	index = 0 ifTrue: [ ^ aBlock value ].	^ self removeIndex: index!

size	^ size!

values	^ values copyFrom: 1 to: size! !
!GRSmallDictionary categoriesFor: #add:!accessing!public! !
!GRSmallDictionary categoriesFor: #addAll:!accessing!public! !
!GRSmallDictionary categoriesFor: #associations!accessing!public! !
!GRSmallDictionary categoriesFor: #associationsDo:!enumerating!public! !
!GRSmallDictionary categoriesFor: #at:!accessing!public! !
!GRSmallDictionary categoriesFor: #at:ifAbsent:!accessing!public! !
!GRSmallDictionary categoriesFor: #at:ifAbsentPut:!accessing!public! !
!GRSmallDictionary categoriesFor: #at:ifPresent:!accessing!public! !
!GRSmallDictionary categoriesFor: #at:put:!accessing!public! !
!GRSmallDictionary categoriesFor: #do:!enumerating!public! !
!GRSmallDictionary categoriesFor: #errorKeyNotFound!private! !
!GRSmallDictionary categoriesFor: #findIndexFor:!private! !
!GRSmallDictionary categoriesFor: #grow!private! !
!GRSmallDictionary categoriesFor: #includesKey:!public!testing! !
!GRSmallDictionary categoriesFor: #initialize:!initialization!public! !
!GRSmallDictionary categoriesFor: #isCollection!public!testing! !
!GRSmallDictionary categoriesFor: #isEmpty!public!testing! !
!GRSmallDictionary categoriesFor: #keys!enumerating!public! !
!GRSmallDictionary categoriesFor: #keysAndValuesDo:!enumerating!public! !
!GRSmallDictionary categoriesFor: #keysDo:!enumerating!public! !
!GRSmallDictionary categoriesFor: #postCopy!copying!public! !
!GRSmallDictionary categoriesFor: #printOn:!printing!public! !
!GRSmallDictionary categoriesFor: #privateAt:put:!private! !
!GRSmallDictionary categoriesFor: #removeIndex:!private! !
!GRSmallDictionary categoriesFor: #removeKey:!accessing!public! !
!GRSmallDictionary categoriesFor: #removeKey:ifAbsent:!accessing!public! !
!GRSmallDictionary categoriesFor: #size!accessing!public! !
!GRSmallDictionary categoriesFor: #values!enumerating!public! !

!GRSmallDictionary class methodsFor!

new	^ self new: 3!

new: anInteger	^ self basicNew initialize: anInteger; yourself!

withAll: aDictionary	^ (self new: aDictionary size)		addAll: aDictionary;		yourself! !
!GRSmallDictionary class categoriesFor: #new!instance creation!public! !
!GRSmallDictionary class categoriesFor: #new:!instance creation!public! !
!GRSmallDictionary class categoriesFor: #withAll:!instance creation!public! !


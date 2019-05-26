"Filed out from Dolphin Smalltalk 7"!

GROrderedMultiMap2Test subclass: #WAHeaderFieldsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHeaderFieldsTest guid: (GUID fromString: '{dd921a33-ea9e-48bb-bebd-6f5e972933f2}')!
WAHeaderFieldsTest comment: ''!
!WAHeaderFieldsTest categoriesForClass!Seaside-Tests-Core-HTTP! !
!WAHeaderFieldsTest methodsFor!

collectionClass	^ WAHeaderFields!

testAt	self assert: (collection removeKey: '1') isNil.	collection add: '1' -> 'foo'.	collection add: '1' -> 'bar'.	self assert: (collection at: '1') =		(self allowsDuplicateKeys ifTrue: [ 'foo' ] ifFalse: [ 'bar' ])!

testCrLf	| crlf testValue |	crlf := String with: Character cr with: Character lf.	testValue := 'value', crlf, 'Location: www.bad.com', crlf, crlf.	self		should: [			collection add: 'key' -> testValue ]		raise: WAInvalidHeaderValueError.	self		should: [			collection addAll: (Dictionary new				add: 'key' -> testValue;				yourself) ]		raise: WAInvalidHeaderValueError.	self		should: [			collection at: 'key' add: testValue ]		raise: WAInvalidHeaderValueError.	self		should: [			collection at: 'key' put: testValue ]		raise: WAInvalidHeaderValueError.	self		should: [			collection at: 'key' ifAbsentPut: [ testValue ] ]		raise: WAInvalidHeaderValueError.	self		should: [			collection at: 'key' put: testValue ]		raise: WAInvalidHeaderValueError	!

testDictionaryConversion	| dict |	dict := Dictionary new at: 1 put: 2; yourself.	collection := dict seasideRequestFields.	self assert: (collection isKindOf: WARequestFields).	self assertAssociations: (Array with: 1 -> 2)!

testRemoveKey	self assert: (collection removeKey: '1') isNil.	collection add: '1' -> 'foo'.	collection add: '1' -> 'bar'.	collection add: '2' -> 'baz'.	self assert: (collection removeKey: '1') =		(self allowsDuplicateKeys ifTrue: [ #('foo' 'bar') ] ifFalse: [ 'bar' ]).	self assertAssociations: (Array with: '2' -> 'baz').	self assert: (collection removeKey: '2') =		(self allowsDuplicateKeys ifTrue: [ #('baz') ] ifFalse: [ 'baz' ]).	self assertAssociations: #()!

testSmallDictionaryConversion	| dict |	dict := GRSmallDictionary2 new at: 1 put: 2; yourself.	collection := dict seasideRequestFields.	self assert: (collection isKindOf: WARequestFields).	self assertAssociations: (Array with: 1 -> 2)! !
!WAHeaderFieldsTest categoriesFor: #collectionClass!configuration!public! !
!WAHeaderFieldsTest categoriesFor: #testAt!public!tests/accessing! !
!WAHeaderFieldsTest categoriesFor: #testCrLf!public!tests! !
!WAHeaderFieldsTest categoriesFor: #testDictionaryConversion!public!tests! !
!WAHeaderFieldsTest categoriesFor: #testRemoveKey!public!tests/accessing! !
!WAHeaderFieldsTest categoriesFor: #testSmallDictionaryConversion!public!tests! !


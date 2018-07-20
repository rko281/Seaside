"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #GRNumberTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRNumberTest guid: (GUID fromString: '{bc3ac025-7560-4b09-bfd5-5975b7e43182}')!
GRNumberTest comment: ''!
!GRNumberTest categoriesForClass!Grease-Tests-Core! !
!GRNumberTest methodsFor!

testBetweenAnd	self assert: (6 between: 1 and: 12)!

testPluralize	self assert: (0 pluralize: 'person') = '0 people'.	self assert: (1 pluralize: 'person') = '1 person'.	self assert: (2 pluralize: 'person') = '2 people'.	self assert: (3 pluralize: 'person') = '3 people'.		self assert: (0 pluralize: 'penis') = '0 penises'.	self assert: (1 pluralize: 'penis') = '1 penis'.	self assert: (2 pluralize: 'penis') = '2 penises'.		self assert: (0 pluralize: 'person' with: 'members') = '0 members'.	self assert: (1 pluralize: 'person' with: 'members') = '1 person'.	self assert: (2 pluralize: 'person' with: 'members') = '2 members'.	self assert: (3 pluralize: 'person' with: 'members') = '3 members'!

testReadFrom	"We test #readFrom: as the expected behaviour on all platforms, as we rely on it for WANumberAttribute and WAQualifiedValue"		self assert: (Number readFrom: '123' readStream) = 123.		self assert: (Float readFrom: '123.45' readStream) = 123.45.		self assert:   (Number readFrom: '123.45' readStream) = 123.45!

testTo	| collection |	collection := OrderedCollection new.	1 to: 5 do: [ :ea | collection add: ea ].	self assert: collection asArray = #(1 2 3 4 5).		collection := OrderedCollection new.	4 to: 4 do: [ :ea | collection add: ea ].	self assert: collection asArray = #(4).		collection := OrderedCollection new.	4 to: 4 do: [ :ea | collection add: ea ].	self assert: collection asArray = #(4).		collection := OrderedCollection new.	5 to: 4 do: [ :ea | collection add: ea ].	self assert: collection asArray = #().		collection := OrderedCollection new.	-3 to: -1.5 do: [ :ea | collection add: ea ].	self assert: collection asArray = #(-3 -2).		collection := OrderedCollection new.	1.5 to: 4 do: [ :ea | collection add: ea ].	self assert: collection asArray = #(1.5 2.5 3.5)!

testToDo	| collection |	collection := OrderedCollection new.	1 to: 5 do: [ :ea | collection add: ea ].	self assert: collection asArray = #(1 2 3 4 5).		collection := OrderedCollection new.	4 to: 4 do: [ :ea | collection add: ea ].	self assert: collection asArray = #(4).		collection := OrderedCollection new.	4 to: 4 do: [ :ea | collection add: ea ].	self assert: collection asArray = #(4).		collection := OrderedCollection new.	5 to: 4 do: [ :ea | collection add: ea ].	self assert: collection asArray = #().		collection := OrderedCollection new.	-3 to: -1.5 do: [ :ea | collection add: ea ].	self assert: collection asArray = #(-3 -2).		collection := OrderedCollection new.	1.5 to: 4 do: [ :ea | collection add: ea ].	self assert: collection asArray = #(1.5 2.5 3.5)!

testToDoClosures	"#to:do: may be optimized and VAST currently has problems with closures	in this case. We would prefer to use the optimized version than than	(1 to: 5) do: [ ... ] so this test is here to highlight the problem at	least unless the platforms tell us the problem is not fixable."		| collection |	collection := OrderedCollection new.	1 to: 5 do: [ :each | collection add: [ each ] fixCallbackTemps ].	self assert: (collection collect: [ :each | each value ]) asArray = #(1 2 3 4 5)! !
!GRNumberTest categoriesFor: #testBetweenAnd!public!tests! !
!GRNumberTest categoriesFor: #testPluralize!public!tests! !
!GRNumberTest categoriesFor: #testReadFrom!public!tests! !
!GRNumberTest categoriesFor: #testTo!public!tests! !
!GRNumberTest categoriesFor: #testToDo!public!tests! !
!GRNumberTest categoriesFor: #testToDoClosures!public!tests! !


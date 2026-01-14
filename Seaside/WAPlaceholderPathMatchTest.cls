"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAPlaceholderPathMatchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPlaceholderPathMatchTest guid: (GUID fromString: '{6785613c-367c-4bb6-9ea6-2cf920306a3a}')!

WAPlaceholderPathMatchTest comment: ''!

!WAPlaceholderPathMatchTest categoriesForClass!Seaside-Tests-REST-Core! !

!WAPlaceholderPathMatchTest methodsFor!

testFullInstantiation	| match |	match := WAPPathMatch fromString: '{7}' index: 2 arguments: #().	self assert: (match isKindOf: WAFullPlaceholderPathMatch).	self assert: match priority = 2.	self assert: match sourceIndex = 2.	self assert: match targetIndex = 7!

testFullMapArgumentsWithElementsInto	| match result |	match := WAPPathMatch fromString: '{1}' index: 1 arguments: #().	result := Array new: 1.	match mapArgumentsWithElements: #('foo') into: result.	self assert: result first = 'foo'!

testMatchesFull	| match |	match := WAPPathMatch fromString: '{7}' index: 1 arguments: #().	self assert: (match matches: 'foo')!

testMatchesPrefix	| match |	match := WAPPathMatch fromString: 'foo.{7}' index: 1 arguments: #().	self assert: (match matches: 'foo.bar').	self deny: (match matches: 'foo.').	self deny: (match matches: 'fo.bar').	self deny: (match matches: 'oo.bar')!

testMatchesSuffix	| match |	match := WAPPathMatch fromString: '{7}.bar' index: 1 arguments: #().	self assert: (match matches: 'foo.bar').	self deny: (match matches: '.bar').	self deny: (match matches: 'foo.barz').	self deny: (match matches: 'foo.ba')!

testMultiInstantiation	| match |	match := WAPPathMatch fromString: '*7*' index: 2 arguments: #().	self assert: (match isKindOf: WAMultiPlaceholderPathMatch).	self assert: match priority = 1.	self assert: match sourceIndex = 2.	self assert: match targetIndex = 7!

testNamedInstantiation	| match |	match := WAPPathMatch fromString: '{put}' index: 2 arguments: #('get' 'put' 'post').	self assert: (match isKindOf: WAFullPlaceholderPathMatch).	self assert: match priority = 2.	self assert: match sourceIndex = 2.	self assert: match targetIndex = 2!

testNamedMultiInstantiation	| match |	match := WAPPathMatch fromString: '*put*' index: 2 arguments: #('get' 'put' 'post').	self assert: (match isKindOf: WAMultiPlaceholderPathMatch).	self assert: match priority = 1.	self assert: match sourceIndex = 2.	self assert: match targetIndex = 2!

testPrefixInstantiation	| match |	match := WAPPathMatch fromString: 'foo.{787}' index: 2 arguments: #().	self assert: (match isKindOf: WAPrefixPlaceholderPathMatch).	self assert: match priority = 3.	self assert: match sourceIndex = 2.	self assert: match targetIndex = 787!

testPrefixMapArgumentsWithElementsInto	| match result |	match := WAPPathMatch fromString: 'foo.{1}' index: 1 arguments: #().	result := Array new: 1.	match mapArgumentsWithElements: #('foo.bar') into: result.	self assert: result first = 'bar'!

testSuffixInstantiation	| match |	match := WAPPathMatch fromString: '{787}.bar' index: 2 arguments: #().	self assert: (match isKindOf: WASuffixPlaceholderPathMatch).	self assert: match priority = 3.	self assert: match sourceIndex = 2.	self assert: match targetIndex = 787!

testSuffixMapArgumentsWithElementsInto	| match result |	match := WAPPathMatch fromString: '{1}.bar' index: 1 arguments: #().	result := Array new: 1.	match mapArgumentsWithElements: #('foo.bar') into: result.	self assert: result first = 'foo'! !

!WAPlaceholderPathMatchTest categoriesForMethods!
testFullInstantiation!public!tests! !
testFullMapArgumentsWithElementsInto!public!tests! !
testMatchesFull!public!tests! !
testMatchesPrefix!public!tests! !
testMatchesSuffix!public!tests! !
testMultiInstantiation!public!tests! !
testNamedInstantiation!public!tests! !
testNamedMultiInstantiation!public!tests! !
testPrefixInstantiation!public!tests! !
testPrefixMapArgumentsWithElementsInto!public!tests! !
testSuffixInstantiation!public!tests! !
testSuffixMapArgumentsWithElementsInto!public!tests! !
!


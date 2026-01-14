"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAPlaceholderParameterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPlaceholderParameterTest guid: (GUID fromString: '{5818715d-3b44-457f-9307-202c163935d7}')!

WAPlaceholderParameterTest comment: ''!

!WAPlaceholderParameterTest categoriesForClass!Seaside-Tests-REST-Core! !

!WAPlaceholderParameterTest methodsFor!

testInstantiation	| match |	match := WAParameterMatch name: 'rev' value: '{1}' arguments: #().	self assert: (match isKindOf: WAPlaceholderParameterMatch).	self assert: match index = 1!

testMatches	| match |	match := WAParameterMatch name: 'rev' value: '{1}' arguments: #().	self assert: (match matchesName: 'rev' value: '58692').	self assert: (match matchesName: 'rev' value: 'a').	self deny: (match matchesName: 'revision' value: '58692')!

testNamedInstantiation	| match |	match := WAParameterMatch name: 'rev' value: '{put}' arguments: #('post' 'put' 'get').	self assert: (match isKindOf: WAPlaceholderParameterMatch).	self assert: match index = 2! !

!WAPlaceholderParameterTest categoriesForMethods!
testInstantiation!public!tests! !
testMatches!public!tests! !
testNamedInstantiation!public!tests! !
!


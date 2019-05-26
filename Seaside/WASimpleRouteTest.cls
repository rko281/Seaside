"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WASimpleRouteTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASimpleRouteTest guid: (GUID fromString: '{6d5cc2ae-46ee-4155-bd82-aa909ca1810f}')!
WASimpleRouteTest comment: ''!
!WASimpleRouteTest categoriesForClass!Seaside-Tests-REST-Core! !
!WASimpleRouteTest methodsFor!

testParameterMatching	| route parameters |	route := WARoute get: #a:.	self assert: (route matchesParameters: Dictionary new).	parameters := Dictionary new at: 'key' put: 'value'; yourself.	self deny: (route matchesParameters: parameters)!

testPathMatching	| route |	route := WARoute get: #a:.	self deny: (route matchesPath: Array new).	self assert: (route matchesPath: #('something')).	self deny: (route matchesPath: #('something' 'else')).	self assert: (route priority = 1).		route := WARoute get: #a:b:.	self deny: (route matchesPath: Array new).	self deny: (route matchesPath: #('something')).	self assert: (route matchesPath: #('something' 'else')).	self deny: (route matchesPath: #('something' 'else' 'more')).	self assert: (route priority = 2)! !
!WASimpleRouteTest categoriesFor: #testParameterMatching!public!tests! !
!WASimpleRouteTest categoriesFor: #testPathMatching!public!tests! !


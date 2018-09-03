"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WARouteTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARouteTest guid: (GUID fromString: '{fafa2566-c01d-4b6b-b2b0-5e5f3fbf4939}')!
WARouteTest comment: ''!
!WARouteTest categoriesForClass!Seaside-Tests-REST-Core! !
!WARouteTest methodsFor!

testCount	| route |	route := WARoute get: #listDatabases.	self assert: route pathElementCount isZero.		route := WARoute get: #getDatabase:.	self assert: route pathElementCount = 1.		route := WARoute get: #getDatabase:document:.	self assert: route pathElementCount = 2!

testMethod	| route |	route := WARoute get: #listDatabases.	self assert: route method = 'GET'.		route := WARoute post: #createDatabase:document:.	self assert: route method = 'POST'.		route := WARoute copy: #copyDatabase:document:.	self assert: route method = 'COPY'.		route := WARoute patch: #updateDatabase:document:.	self assert: route method = 'PATCH'.		route := WARoute options: #options.	self assert: route method = 'OPTIONS'!

testSendSelectorWithTo	| route victim result |	victim := WARouteVictimMock new.	route := WARoute get: #nothing.	result := route sendSelectorWith: Array new to: victim.	self assert: result = Array new.		route := WARoute get: #first:.	result := route sendSelectorWith: #('terrorists') to: victim.	self assert: result = #('terrorists').		route := WARoute get: #first:second:.	result := route sendSelectorWith: #('terrorists' 'marschall') to: victim.	self assert: result = #('terrorists' 'marschall')! !
!WARouteTest categoriesFor: #testCount!public!tests! !
!WARouteTest categoriesFor: #testMethod!public!tests! !
!WARouteTest categoriesFor: #testSendSelectorWithTo!public!tests! !


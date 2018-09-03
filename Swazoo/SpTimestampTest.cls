"Filed out from Dolphin Smalltalk 7"!

SpTestCase subclass: #SpTimestampTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpTimestampTest guid: (GUID fromString: '{d49289d8-48c2-4f2f-b5ab-236ee0ab5ae3}')!
SpTimestampTest comment: ''!
!SpTimestampTest categoriesForClass!Unclassified! !
!SpTimestampTest methodsFor!

testAsRFC1123String
	
	| spTs1 |
	spTs1 := SpTimestamp fromDate: (Date fromString: '06/11/1994' format: 'dd/mm/yyyy') andTime: (Time fromString: '08:49:37').
	self assert: spTs1 asRFC1123String = 'Sun, 06 Nov 1994 08:49:37 GMT'!

testAsSeconds

	 | ts1 spTs1 |
	ts1 := TimeStamp current.
	spTs1 := SpTimestamp fromDate: ts1 date andTime: ts1 time.
	self assert: ts1 asSeconds = spTs1 asSeconds!

testComparison

	 | ts1 spTs1 spTs2 |
	ts1 := TimeStamp current.
	spTs1 := SpTimestamp fromDate: ts1 date andTime: ts1 time.
	spTs2 := SpTimestamp fromDate: (ts1 date addDays: 10) andTime: ts1 time.
	self assert: spTs1 < spTs2.
	self deny: spTs1 >= spTs2!

testEquality

	 | ts1 spTs1 spTs2 |
	ts1 := TimeStamp current.
	spTs1 := SpTimestamp fromDate: ts1 date andTime: ts1 time.
	spTs2 := SpTimestamp fromDate: ts1 date andTime: ts1 time.
	self assert: spTs1 = spTs2 !

testInstantiationFromDateAndTime
	| ts1 spTs1 |
	ts1 := TimeStamp current.
	spTs1 := SpTimestamp fromDate: ts1 date andTime: ts1 time.
	self assert: ts1 = spTs1 underlyingTimestamp!

testInstantiationFromRFC1123String

	| ts |
	ts := TimeStamp date: (Date fromString: '01/01/2006' format: 'dd/MM/yyyy') time: (Time fromString: '14:15:59').
	self assert: ts = (SpTimestamp fromRFC1123String: ts rfc1123String) underlyingTimestamp! !
!SpTimestampTest categoriesFor: #testAsRFC1123String!public! !
!SpTimestampTest categoriesFor: #testAsSeconds!public! !
!SpTimestampTest categoriesFor: #testComparison!public! !
!SpTimestampTest categoriesFor: #testEquality!public! !
!SpTimestampTest categoriesFor: #testInstantiationFromDateAndTime!public! !
!SpTimestampTest categoriesFor: #testInstantiationFromRFC1123String!public! !


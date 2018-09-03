"Filed out from Dolphin Smalltalk 7"!

SpTestCase subclass: #SpDateTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpDateTest guid: (GUID fromString: '{54810b8a-8296-4918-bb7e-48551bd69853}')!
SpDateTest comment: ''!
!SpDateTest categoriesForClass!Unclassified! !
!SpDateTest methodsFor!

testDayAddition

	| date1 date2 |
	date1 := Date fromString: '17/05/1982' format: 'dd/mm/yyyy'.
	date2 := Date fromString: '01/06/1983' format: 'dd/mm/yyyy'.
	self assert: ((SpDate onDate: date1) addDays: 380) = (SpDate onDate: date2).
	self assert: ((SpDate onDate: date2) addDays: -380) = (SpDate onDate: date1)!

testIntantiationOnDate

	self assert: (SpDate onDate: Date today) underlyingDate = Date today!

testIntantiationOnToday

	self assert: (SpDate today) underlyingDate = Date today! !
!SpDateTest categoriesFor: #testDayAddition!public! !
!SpDateTest categoriesFor: #testIntantiationOnDate!public! !
!SpDateTest categoriesFor: #testIntantiationOnToday!public! !


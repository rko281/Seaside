"Filed out from Dolphin Smalltalk"!

WAFunctionalTaskTest subclass: #WATaskErrorFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATaskErrorFunctionalTest guid: (GUID fromString: '{517cc373-6139-4f2a-9303-cb513e2f0163}')!

WATaskErrorFunctionalTest comment: ''!

!WATaskErrorFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WATaskErrorFunctionalTest methodsFor!

go	self confirm: 'Raise an exception?' onAnswer: [ :answer |		[ answer ifTrue: [ self error: 'foo' ] ]			on: Error			do: [ :error | self inform: 'Caught: ', error description onAnswer: [ ] ] ]! !

!WATaskErrorFunctionalTest categoriesForMethods!
go!public!running! !
!


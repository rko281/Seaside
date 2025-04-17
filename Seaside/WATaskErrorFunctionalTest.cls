"Filed out from Dolphin Smalltalk"!

WAFunctionalTaskTest subclass: #WATaskErrorFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATaskErrorFunctionalTest guid: (GUID fromString: '{4c2b74fe-ddd7-48ac-a82c-7a8d93c39a08}')!

WATaskErrorFunctionalTest comment: ''!

!WATaskErrorFunctionalTest categoriesForClass!Unclassified! !

!WATaskErrorFunctionalTest methodsFor!

go	self confirm: 'Raise an exception?' onAnswer: [ :answer |		[ answer ifTrue: [ self error: 'foo' ] ]			on: Error			do: [ :error | self inform: 'Caught: ', error description onAnswer: [ ] ] ]! !

!WATaskErrorFunctionalTest categoriesForMethods!
go!public!running! !
!


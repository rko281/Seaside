"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTaskTest subclass: #WATaskErrorFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATaskErrorFunctionalTest guid: (GUID fromString: '{af8131e8-731b-4df2-8bac-43c8a2c4aa29}')!
WATaskErrorFunctionalTest comment: ''!
!WATaskErrorFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WATaskErrorFunctionalTest methodsFor!

go	self confirm: 'Raise an exception?' onAnswer: [ :answer |		[ answer ifTrue: [ self error: 'foo' ] ]			on: Error			do: [ :error | self inform: 'Caught: ', error description onAnswer: [ ] ] ]! !
!WATaskErrorFunctionalTest categoriesFor: #go!public!running! !


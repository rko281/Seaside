"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTaskTest subclass: #WATaskErrorFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATaskErrorFunctionalTest guid: (GUID fromString: '{be554924-b041-4f93-b891-80c695f56d28}')!
WATaskErrorFunctionalTest comment: ''!
!WATaskErrorFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WATaskErrorFunctionalTest methodsFor!

go	self confirm: 'Raise an exception?' onAnswer: [ :answer |		[ answer ifTrue: [ self error: 'foo' ] ]			on: Error			do: [ :error | self inform: 'Caught: ', error description onAnswer: [ ] ] ]! !
!WATaskErrorFunctionalTest categoriesFor: #go!public!running! !


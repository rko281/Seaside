"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAValidationTestComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAValidationTestComponent guid: (GUID fromString: '{748de106-0899-453a-b10a-85819a48edfe}')!
WAValidationTestComponent comment: ''!
!WAValidationTestComponent categoriesForClass!Seaside-Tests-Functional! !
!WAValidationTestComponent methodsFor!

renderContentOn: html	html anchor		callback: [			self answer: false ];		with: 'Fail validation'.	html break.	html anchor		callback: [			self answer: true ];		with: 'Suceed validation'! !
!WAValidationTestComponent categoriesFor: #renderContentOn:!public!rendering! !


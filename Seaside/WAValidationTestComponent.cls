"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAValidationTestComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAValidationTestComponent guid: (GUID fromString: '{45aae2d3-9284-4e68-b321-f01a55ed8c14}')!
WAValidationTestComponent comment: ''!
!WAValidationTestComponent categoriesForClass!Seaside-Tests-Functional! !
!WAValidationTestComponent methodsFor!

renderContentOn: html	html anchor		callback: [			self answer: false ];		with: 'Fail validation'.	html break.	html anchor		callback: [			self answer: true ];		with: 'Suceed validation'! !
!WAValidationTestComponent categoriesFor: #renderContentOn:!public!rendering! !


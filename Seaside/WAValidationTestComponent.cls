"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAValidationTestComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAValidationTestComponent guid: (GUID fromString: '{5094ca1f-635e-41ed-aef3-5ba1b0cba0bc}')!

WAValidationTestComponent comment: ''!

!WAValidationTestComponent categoriesForClass!Unclassified! !

!WAValidationTestComponent methodsFor!

renderContentOn: html	html anchor		callback: [			self answer: false ];		with: 'Fail validation'.	html break.	html anchor		callback: [			self answer: true ];		with: 'Succeed validation'! !

!WAValidationTestComponent categoriesForMethods!
renderContentOn:!public!rendering! !
!


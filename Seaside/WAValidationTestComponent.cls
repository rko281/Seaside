"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAValidationTestComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAValidationTestComponent guid: (GUID fromString: '{e7be03e7-00b7-4fd2-bba0-c45449a35515}')!

WAValidationTestComponent comment: ''!

!WAValidationTestComponent categoriesForClass!Seaside-Tests-Functional! !

!WAValidationTestComponent methodsFor!

renderContentOn: html	html anchor		callback: [			self answer: false ];		with: 'Fail validation'.	html break.	html anchor		callback: [			self answer: true ];		with: 'Succeed validation'! !

!WAValidationTestComponent categoriesForMethods!
renderContentOn:!public!rendering! !
!


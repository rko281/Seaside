"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAValidationDecorationFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAValidationDecorationFunctionalTest guid: (GUID fromString: '{3f1377a3-f385-4df7-b3ca-7a39da8b404c}')!
WAValidationDecorationFunctionalTest comment: ''!
!WAValidationDecorationFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAValidationDecorationFunctionalTest methodsFor!

renderContentOn: html	self renderExplanationOn: html.	self renderValidationOn: html!

renderExplanationOn: html	html paragraph: [		html text: 'This is a functional test for WAValidationDecoration.'.		html orderedList: [			html listItem: 'Clicking on ''Start'' should take you to a new page with two links, "Fail validation" and "Suceed validation"'.			html listItem: 'Clicking on "Fail validation" should display "Validation Failed!!" above the two links'.			html listItem: 'Clicking on "Suceed validation" should just display "Validation Suceeded!!" and then take you back to this page' ] ]!

renderValidationOn: html	html anchor		callback: [ self startValidation ];		with: 'Start'!

startValidation	self call: (WAValidationTestComponent new		validateWith: [ :value |			value ifFalse: [				WAValidationNotification signal: 'Validation Failed!!' ] ];		yourself).	self inform: 'Validation Suceeded!!'! !
!WAValidationDecorationFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAValidationDecorationFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !
!WAValidationDecorationFunctionalTest categoriesFor: #renderValidationOn:!public!rendering! !
!WAValidationDecorationFunctionalTest categoriesFor: #startValidation!actions!public! !


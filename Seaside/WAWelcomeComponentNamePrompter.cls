"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAWelcomeComponentNamePrompter
	instanceVariableNames: 'componentName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWelcomeComponentNamePrompter guid: (GUID fromString: '{a20012ad-0566-4779-80b3-f9ea4f425b83}')!

WAWelcomeComponentNamePrompter comment: ''!

!WAWelcomeComponentNamePrompter categoriesForClass!Base! !

!WAWelcomeComponentNamePrompter methodsFor!

componentName	^ componentName ifNil: [ componentName := 'MyFirstComponent' ]!

componentName: anObject	componentName := anObject!

renderContentOn: html	html form: [		html text: 'Name your component: '.		html textInput			on: #componentName of: self.		html submitButton			text: 'Create';			callback: [ self answer: self componentName capitalized asSymbol ] ]! !

!WAWelcomeComponentNamePrompter categoriesForMethods!
componentName!accessing!public! !
componentName:!accessing!public! !
renderContentOn:!public!rendering! !
!


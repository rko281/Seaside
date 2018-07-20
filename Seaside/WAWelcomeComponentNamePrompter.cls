"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAWelcomeComponentNamePrompter
	instanceVariableNames: 'componentName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcomeComponentNamePrompter guid: (GUID fromString: '{937c3898-f50f-4ec5-8c5a-f518ebc7be3c}')!
WAWelcomeComponentNamePrompter comment: ''!
!WAWelcomeComponentNamePrompter categoriesForClass!Seaside-Welcome! !
!WAWelcomeComponentNamePrompter methodsFor!

componentName	^ componentName ifNil: [ componentName := 'MyFirstComponent' ]!

componentName: anObject	componentName := anObject!

renderContentOn: html	html form: [		html text: 'Name your component: '.		html textInput			on: #componentName of: self.		html submitButton			text: 'Create';			callback: [ self answer: self componentName capitalized asSymbol ] ]! !
!WAWelcomeComponentNamePrompter categoriesFor: #componentName!accessing!public! !
!WAWelcomeComponentNamePrompter categoriesFor: #componentName:!accessing!public! !
!WAWelcomeComponentNamePrompter categoriesFor: #renderContentOn:!public!rendering! !


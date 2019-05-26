"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAWelcomeComponentNamePrompter
	instanceVariableNames: 'componentName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcomeComponentNamePrompter guid: (GUID fromString: '{793415ac-8eb5-49e0-972f-a79ab40e3ffe}')!
WAWelcomeComponentNamePrompter comment: ''!
!WAWelcomeComponentNamePrompter categoriesForClass!Seaside-Welcome! !
!WAWelcomeComponentNamePrompter methodsFor!

componentName	^ componentName ifNil: [ componentName := 'MyFirstComponent' ]!

componentName: anObject	componentName := anObject!

renderContentOn: html	html form: [		html text: 'Name your component: '.		html textInput			on: #componentName of: self.		html submitButton			text: 'Create';			callback: [ self answer: self componentName capitalized asSymbol ] ]! !
!WAWelcomeComponentNamePrompter categoriesFor: #componentName!accessing!public! !
!WAWelcomeComponentNamePrompter categoriesFor: #componentName:!accessing!public! !
!WAWelcomeComponentNamePrompter categoriesFor: #renderContentOn:!public!rendering! !


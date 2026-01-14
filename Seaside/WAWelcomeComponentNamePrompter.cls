"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAWelcomeComponentNamePrompter
	instanceVariableNames: 'componentName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWelcomeComponentNamePrompter guid: (GUID fromString: '{c11defa0-f25e-4439-9ce4-9a5e86bd90b5}')!

WAWelcomeComponentNamePrompter comment: ''!

!WAWelcomeComponentNamePrompter categoriesForClass!Seaside-Welcome-Base! !

!WAWelcomeComponentNamePrompter methodsFor!

componentName	^ componentName ifNil: [ componentName := 'MyFirstComponent' ]!

componentName: anObject	componentName := anObject!

renderContentOn: html	html form: [		html text: 'Name your component: '.		html textInput			on: #componentName of: self.		html submitButton			text: 'Create';			callback: [ self answer: self componentName capitalized asSymbol ] ]! !

!WAWelcomeComponentNamePrompter categoriesForMethods!
componentName!accessing!public! !
componentName:!accessing!public! !
renderContentOn:!public!rendering! !
!


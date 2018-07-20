"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAWelcomeComponentConfirmation
	instanceVariableNames: 'componentName component'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcomeComponentConfirmation guid: (GUID fromString: '{0851af9f-2f31-4518-8c7d-82232ac92650}')!
WAWelcomeComponentConfirmation comment: ''!
!WAWelcomeComponentConfirmation categoriesForClass!Seaside-Welcome! !
!WAWelcomeComponentConfirmation methodsFor!

children	^ Array with: self component!

component	^ component!

component: anObject	component := anObject!

componentName	^ componentName!

componentName: anObject	componentName := anObject!

renderContentOn: html	html paragraph: [		html text: 'You can see your component in action here: '.		html anchor			target: '_blank';			url: '/', self componentName;			with: '/', self componentName ].			html paragraph: [		html text: 'Now go find the class ';			code: self componentName;			text: ' in your Smalltalk image. First, try changing the displayed text by changing the ';			code: '#renderContentOn:';			text: ' method. Then you can experiment further based on what you''ve seen in the examples and what you read in the '.		html anchor				url: 'http://book.seaside.st/';				with: 'documentation.' ].			html paragraph: [		html text: 'Want to '.		html anchor			callback: [ self answer ];			with: 'create another component'.		html text: '?' ]! !
!WAWelcomeComponentConfirmation categoriesFor: #children!hooks!public! !
!WAWelcomeComponentConfirmation categoriesFor: #component!accessing!public! !
!WAWelcomeComponentConfirmation categoriesFor: #component:!accessing!public! !
!WAWelcomeComponentConfirmation categoriesFor: #componentName!accessing!public! !
!WAWelcomeComponentConfirmation categoriesFor: #componentName:!accessing!public! !
!WAWelcomeComponentConfirmation categoriesFor: #renderContentOn:!public!rendering! !

!WAWelcomeComponentConfirmation class methodsFor!

component: component named: componentName	^ self new		component: component;		componentName: componentName;		yourself! !
!WAWelcomeComponentConfirmation class categoriesFor: #component:named:!instance creation!public! !


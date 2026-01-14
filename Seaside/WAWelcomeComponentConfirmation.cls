"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAWelcomeComponentConfirmation
	instanceVariableNames: 'componentName component'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWelcomeComponentConfirmation guid: (GUID fromString: '{32f59ecc-d752-41ca-8436-72eb95f041b5}')!

WAWelcomeComponentConfirmation comment: ''!

!WAWelcomeComponentConfirmation categoriesForClass!Seaside-Welcome-Base! !

!WAWelcomeComponentConfirmation methodsFor!

children	^ Array with: self component!

component	^ component!

component: anObject	component := anObject!

componentName	^ componentName!

componentName: anObject	componentName := anObject!

renderContentOn: html	html paragraph: [		html text: 'You can see your component in action here: '.		html anchor			target: '_blank';			url: '/', self componentName;			with: '/', self componentName ].			html paragraph: [		html text: 'Now go find the class ';			code: self componentName;			text: ' in your Smalltalk image. First, try changing the displayed text by changing the ';			code: '#renderContentOn:';			text: ' method. Then you can experiment further based on what you''ve seen in the examples and what you read in the '.		html anchor				url: 'http://book.seaside.st/';				with: 'documentation.' ].			html paragraph: [		html text: 'Want to '.		html anchor			callback: [ self answer ];			with: 'create another component'.		html text: '?' ]! !

!WAWelcomeComponentConfirmation categoriesForMethods!
children!hooks!public! !
component!accessing!public! !
component:!accessing!public! !
componentName!accessing!public! !
componentName:!accessing!public! !
renderContentOn:!public!rendering! !
!

!WAWelcomeComponentConfirmation class methodsFor!

component: component named: componentName	^ self new		component: component;		componentName: componentName;		yourself! !

!WAWelcomeComponentConfirmation class categoriesForMethods!
component:named:!instance creation!public! !
!


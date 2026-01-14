"Filed out from Dolphin Smalltalk"!

WAWidgetDecoration subclass: #WAValidationDecoration
	instanceVariableNames: 'message validationBlock exceptionClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAValidationDecoration guid: (GUID fromString: '{f7070247-26a5-4b6a-b2f8-4ddd2dcd0661}')!

WAValidationDecoration comment: 'A WAValidationDecoration validates its component form data when the component returns using "answer" or "answer:". A WAValidationDecoration can be added to component via the method "validateWith:" as below.	SampleLoginComponent>>intialize		form := WAFormDecoration new buttons: self buttons.		self addDecoration: form.		self validateWith: [:answerArgOrSelf | answerArgOrSelf validate].		self addMessage: ''Please enter the following information''.If component returns via "answer:" the answer: argument is passed to the validate block. If the component returns using "answer" the sender of "answer" is passed to the validate block.Instance Variables	exceptionClass:		<Notification>	message:		<String>	validationBlock:		<one arg block>exceptionClass	- Type of notication that is raised by validation code when validation fails. Default value is WAValidationNotificationmessage	- String message displayed on validation failure. Obtained from the notificationvalidationBlock	- One arg block, '!

!WAValidationDecoration categoriesForClass!Seaside-Widgets-Decorations! !

!WAValidationDecoration methodsFor!

exceptionClass	^ exceptionClass ifNil: [ exceptionClass := WAValidationNotification ]!

exceptionClass: aClass	exceptionClass := aClass!

handleAnswer: anObject	^ (super handleAnswer: anObject) or: [ (self validate: anObject) not ]!

handleAnswer: anObject continueWith: aBlock	(self validate: anObject)		ifTrue: [ aBlock value ]!

initialize	super initialize.	message := WAValueHolder new!

renderContentOn: html	message contents isNil ifFalse: [		html div			class: 'validation-error';			with: message contents ].	self renderNextOn: html!

states	^ Array with: message!

validate: anObject	^ [ validationBlock value: anObject.	message contents: nil.	true ]		on: self exceptionClass		do: [ :exception |			message contents: exception messageText.			exception return: false ]!

validateWith: aBlock	validationBlock := aBlock! !

!WAValidationDecoration categoriesForMethods!
exceptionClass!accessing!public! !
exceptionClass:!accessing!public! !
handleAnswer:!delegation!public! !
handleAnswer:continueWith:!processing!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
states!hooks!public! !
validate:!public!request processing! !
validateWith:!convenience!public! !
!


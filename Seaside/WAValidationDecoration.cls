"Filed out from Dolphin Smalltalk 7"!

WAWidgetDecoration subclass: #WAValidationDecoration
	instanceVariableNames: 'message validationBlock exceptionClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAValidationDecoration guid: (GUID fromString: '{07610206-071b-4473-97e6-3d622c896a2e}')!
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
!WAValidationDecoration categoriesFor: #exceptionClass!accessing!public! !
!WAValidationDecoration categoriesFor: #exceptionClass:!accessing!public! !
!WAValidationDecoration categoriesFor: #handleAnswer:!delegation!public! !
!WAValidationDecoration categoriesFor: #handleAnswer:continueWith:!processing!public! !
!WAValidationDecoration categoriesFor: #initialize!initialization!public! !
!WAValidationDecoration categoriesFor: #renderContentOn:!public!rendering! !
!WAValidationDecoration categoriesFor: #states!hooks!public! !
!WAValidationDecoration categoriesFor: #validate:!public!request processing! !
!WAValidationDecoration categoriesFor: #validateWith:!convenience!public! !


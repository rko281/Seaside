"Filed out from Dolphin Smalltalk"!

WAFormInputTag subclass: #WAButtonTag
	instanceVariableNames: 'type value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAButtonTag guid: (GUID fromString: '{dd191139-13c5-4271-bf70-f5bf07b531a3}')!

WAButtonTag comment: 'Buttons created with the BUTTON element function just like buttons created with the INPUT element, but they offer richer rendering possibilities: the BUTTON element may have content. For example, a BUTTON element that contains an image functions like and may resemble an INPUT element whose type is set to "image", but the BUTTON element type allows content.'!

!WAButtonTag categoriesForClass!Tags! !

!WAButtonTag methodsFor!

bePush	"Creates a push button. Push buttons have no default behavior. Each push button may have client-side scripts associated with the element's event attributes. When an event occurs (e.g., the user presses the button, releases it, etc.), the associated script is triggered."	type := 'button'!

beReset	"Creates a reset button. When activated it resets all controls to their initial values."	type := 'reset'!

beSubmit	"Creates a submit button. When activated, a submit button submits a form. A form may contain more than one submit button. This is the default."	type := 'submit'!

callback: aNiladicValuable 	aNiladicValuable argumentCount > 0 ifTrue: [ GRInvalidArgumentCount signal: 'Buttons expect a niladic callback.' ].	self name: (self storeCallback: (WAActionCallback on: aNiladicValuable))!

initialize	super initialize.	self beSubmit!

isClosed	^ false!

on: aSymbol of: anObject 	self value: (self 			labelForSelector: aSymbol			of: anObject).	self callback: (GRDelayedSend 			receiver: anObject			selector: aSymbol)!

tag	^ 'button'!

type	^ type!

value	^ value!

value: aString	value := aString!

with: aBlock	super with: (value ifNil: [ aBlock ])! !

!WAButtonTag categoriesForMethods!
bePush!accessing!public! !
beReset!accessing!public! !
beSubmit!accessing!public! !
callback:!callbacks!public! !
initialize!initialization!public! !
isClosed!public!testing! !
on:of:!callbacks!public! !
tag!accessing!public! !
type!accessing!public! !
value!attributes!public! !
value:!attributes!public! !
with:!public! !
!


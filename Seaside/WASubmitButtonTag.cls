"Filed out from Dolphin Smalltalk"!

WAFormInputTag subclass: #WASubmitButtonTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASubmitButtonTag guid: (GUID fromString: '{97fcfbe2-0556-4a4b-986e-a3152d9189a4}')!

WASubmitButtonTag comment: 'The submit type creates a button. When a submit button is pressed it automatically submits the form.'!

!WASubmitButtonTag categoriesForClass!Tags! !

!WASubmitButtonTag methodsFor!

callback: aNiladicValuable 	aNiladicValuable argumentCount > 0 ifTrue: 		[ GRInvalidArgumentCount signal: 'Submit buttons expect a niladic callback.' ].	self name: (self storeCallback: (WAActionCallback on: aNiladicValuable))!

on: aSymbol of: anObject 	self value: (self 			labelForSelector: aSymbol			of: anObject).	self callback: (GRDelayedSend 			receiver: anObject			selector: aSymbol)!

type	^ 'submit'!

with: anObject 	anObject isNil ifFalse: [ self value: anObject greaseString ].	super with: nil! !

!WASubmitButtonTag categoriesForMethods!
callback:!callbacks!public! !
on:of:!callbacks!public! !
type!accessing!public! !
with:!public! !
!


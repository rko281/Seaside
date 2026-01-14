"Filed out from Dolphin Smalltalk"!

WAFormInputTag subclass: #WASubmitButtonTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASubmitButtonTag guid: (GUID fromString: '{56ea48a6-f2fa-4ed8-99ee-77a9be5a914a}')!

WASubmitButtonTag comment: 'The submit type creates a button. When a submit button is pressed it automatically submits the form.'!

!WASubmitButtonTag categoriesForClass!Seaside-Canvas-Tags! !

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


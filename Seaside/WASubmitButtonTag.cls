"Filed out from Dolphin Smalltalk 7"!

WAFormInputTag subclass: #WASubmitButtonTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASubmitButtonTag guid: (GUID fromString: '{5c3da8cf-8f41-4b4a-8594-ee4a4bdeaad4}')!
WASubmitButtonTag comment: 'The submit type creates a button. When a submit button is pressed it automatically submits the form.'!
!WASubmitButtonTag categoriesForClass!Seaside-Canvas-Tags! !
!WASubmitButtonTag methodsFor!

callback: aNiladicValuable 	aNiladicValuable argumentCount > 0 ifTrue: 		[ GRInvalidArgumentCount signal: 'Submit buttons expect a niladic callback.' ].	self name: (self storeCallback: (WAActionCallback on: aNiladicValuable))!

on: aSymbol of: anObject 	self value: (self 			labelForSelector: aSymbol			of: anObject).	self callback: (GRDelayedSend 			receiver: anObject			selector: aSymbol)!

type	^ 'submit'!

with: anObject 	anObject isNil ifFalse: [ self value: anObject greaseString ].	super with: nil! !
!WASubmitButtonTag categoriesFor: #callback:!callbacks!public! !
!WASubmitButtonTag categoriesFor: #on:of:!callbacks!public! !
!WASubmitButtonTag categoriesFor: #type!accessing!public! !
!WASubmitButtonTag categoriesFor: #with:!public! !


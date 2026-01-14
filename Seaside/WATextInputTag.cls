"Filed out from Dolphin Smalltalk"!

WAAbstractTextAreaTag subclass: #WATextInputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATextInputTag guid: (GUID fromString: '{0a51e06f-7c54-4f47-9158-fa26d50b7972}')!

WATextInputTag comment: 'I am a single line text input widget. See WAInputTest >> #renderTextInputWithExampleOn: for examples.'!

!WATextInputTag categoriesForClass!Seaside-Canvas-Tags! !

!WATextInputTag methodsFor!

maxLength: aNumber 	"This attribute specifies the maximum number of characters the user may enter. This number may exceed the specified #size:, in which case the user agent should offer a scrolling mechanism. The default value for this attribute is an unlimited number."	self attributes 		at: 'maxlength'		put: aNumber!

type	^ 'text'!

with: anObject 	anObject isNil ifFalse: [ self value: anObject greaseString ].	super with: nil! !

!WATextInputTag categoriesForMethods!
maxLength:!attributes!public! !
type!accessing!public! !
with:!public! !
!


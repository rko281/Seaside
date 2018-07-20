"Filed out from Dolphin Smalltalk 7"!

WAAbstractTextAreaTag subclass: #WATextInputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATextInputTag guid: (GUID fromString: '{cdbf5ba7-fc31-4810-9a05-718454f76be4}')!
WATextInputTag comment: 'I am a single line text input widget. See WAInputTest >> #renderTextInputWithExampleOn: for examples.'!
!WATextInputTag categoriesForClass!Seaside-Canvas-Tags! !
!WATextInputTag methodsFor!

maxLength: aNumber 	"This attribute specifies the maximum number of characters the user may enter. This number may exceed the specified #size:, in which case the user agent should offer a scrolling mechanism. The default value for this attribute is an unlimited number."	self attributes 		at: 'maxlength'		put: aNumber!

type	^ 'text'!

with: anObject 	anObject isNil ifFalse: [ self value: anObject greaseString ].	super with: nil! !
!WATextInputTag categoriesFor: #maxLength:!attributes!public! !
!WATextInputTag categoriesFor: #type!accessing!public! !
!WATextInputTag categoriesFor: #with:!public! !


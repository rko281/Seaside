"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAFormInputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFormInputTag guid: (GUID fromString: '{08156b18-9d65-4ed6-9d27-166fe36b41b1}')!
WAFormInputTag comment: 'The <input> tag defines the start of an input field where the user can enter data.'!
!WAFormInputTag categoriesForClass!Seaside-Canvas-Tags! !
!WAFormInputTag methodsFor!

callback: aBlock	self name: (self storeCallback: (WAValueCallback on: aBlock))!

isClosed	^ true!

name: aString	"This attribute assigns the control name.		A control's 'control name' is given by its name attribute. The scope of the name attribute for a control within a FORM element is the FORM element."	self attributes at: 'name' put: aString!

on: aSelector of: anObject 	self value: (anObject perform: aSelector).	self callback: (GRDelayedSend 			receiver: anObject			selector: aSelector asMutator)!

readonly: aBoolean	"When set to true, this boolean attribute prohibits changes to the widget."	self attributes at: 'readonly' put: aBoolean!

size: aNumber 	"This attribute tells the user agent the initial width of the widget. The width is given in pixels except when type attribute has the value 'text' or 'password'. In that case, its value refers to the (integer) number of characters."	self attributes 		at: 'size'		put: aNumber!

tag	^ 'input'!

text: aString	self value: aString!

type	^ nil!

type: aString	self attributes at: 'type' put: aString!

value	^ self attributes at: 'value'!

value: anObject	anObject isNil		ifFalse: [ self attributes at: 'value' put: anObject ]!

with: aBlock	self type isNil ifFalse: [		self attributes at: 'type' ifAbsentPut: [ self type ] ].	super with: aBlock! !
!WAFormInputTag categoriesFor: #callback:!callbacks!public! !
!WAFormInputTag categoriesFor: #isClosed!public!testing! !
!WAFormInputTag categoriesFor: #name:!attributes!public! !
!WAFormInputTag categoriesFor: #on:of:!callbacks!public! !
!WAFormInputTag categoriesFor: #readonly:!attributes!public! !
!WAFormInputTag categoriesFor: #size:!attributes!public! !
!WAFormInputTag categoriesFor: #tag!accessing!public! !
!WAFormInputTag categoriesFor: #text:!attributes!public! !
!WAFormInputTag categoriesFor: #type!accessing!public! !
!WAFormInputTag categoriesFor: #type:!attributes!public! !
!WAFormInputTag categoriesFor: #value!attributes!public! !
!WAFormInputTag categoriesFor: #value:!attributes!public! !
!WAFormInputTag categoriesFor: #with:!public! !


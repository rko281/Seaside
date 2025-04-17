"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAFormInputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFormInputTag guid: (GUID fromString: '{0ac0600d-5092-4d22-9aae-17d36a388b9a}')!

WAFormInputTag comment: 'The <input> tag defines the start of an input field where the user can enter data.'!

!WAFormInputTag categoriesForClass!Tags! !

!WAFormInputTag methodsFor!

autocomplete: aString	"User agents sometimes have features for helping users fill forms in, for example prefilling the user's address based on earlier user input. The autocomplete content attribute can be used to hint to the user agent how to, or indeed whether to, provide such a feature."	self attributes 		at: 'autocomplete'		append: aString!

callback: aBlock	self name: (self storeCallback: (WAValueCallback on: aBlock))!

isClosed	^ true!

name: aString	"This attribute assigns the control name.		A control's 'control name' is given by its name attribute. The scope of the name attribute for a control within a FORM element is the FORM element."	self attributes at: 'name' put: aString!

noAutocomplete	self autocomplete: 'off'!

on: aSelector of: anObject 	self value: (anObject perform: aSelector).	self callback: (GRDelayedSend 			receiver: anObject			selector: aSelector greaseAsMutator)!

readonly: aBoolean	"When set to true, this boolean attribute prohibits changes to the widget."	self attributes at: 'readonly' put: aBoolean!

size: aNumber 	"This attribute tells the user agent the initial width of the widget. The width is given in pixels except when type attribute has the value 'text' or 'password'. In that case, its value refers to the (integer) number of characters."	self attributes 		at: 'size'		put: aNumber!

tag	^ 'input'!

text: aString	self value: aString!

type	^ nil!

type: aString	self attributes at: 'type' put: aString!

value	^ self attributes at: 'value'!

value: anObject	anObject isNil		ifFalse: [ self attributes at: 'value' put: anObject ]!

with: aBlock	self type isNil ifFalse: [		self attributes at: 'type' ifAbsentPut: [ self type ] ].	super with: aBlock! !

!WAFormInputTag categoriesForMethods!
autocomplete:!attributes!public! !
callback:!callbacks!public! !
isClosed!public!testing! !
name:!attributes!public! !
noAutocomplete!attributes!public! !
on:of:!callbacks!public! !
readonly:!attributes!public! !
size:!attributes!public! !
tag!accessing!public! !
text:!attributes!public! !
type!accessing!public! !
type:!attributes!public! !
value!attributes!public! !
value:!attributes!public! !
with:!public! !
!

!WAFormInputTag class methodsFor!

isAbstract 	^ self == WAFormInputTag! !

!WAFormInputTag class categoriesForMethods!
isAbstract!public!testing! !
!


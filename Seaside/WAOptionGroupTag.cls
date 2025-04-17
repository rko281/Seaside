"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAOptionGroupTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAOptionGroupTag guid: (GUID fromString: '{6a9f38f4-8e55-4618-9642-3c4a8fbbd5a8}')!

WAOptionGroupTag comment: 'The OPTGROUP element allows authors to group choices logically. This is particularly helpful when the user must choose from a long list of options; groups of related choices are easier to grasp and remember than a single long list of options.It has crappy browser support and noone as ever used it. See WAInputTest >> #renderOptionGroupOn: for examples.'!

!WAOptionGroupTag categoriesForClass!Tags! !

!WAOptionGroupTag methodsFor!

initialize	super initialize.	self label: ''!

label: aString	"This attribute specifies the label for the option group."	self attributes at: 'label' put: aString!

tag	^ 'optgroup'! !

!WAOptionGroupTag categoriesForMethods!
initialize!initialization!public! !
label:!attributes!public! !
tag!accessing!public! !
!


"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAOptionGroupTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAOptionGroupTag guid: (GUID fromString: '{41a2e5c6-cdf4-4ed3-847e-dff0b4cbf0da}')!
WAOptionGroupTag comment: 'The OPTGROUP element allows authors to group choices logically. This is particularly helpful when the user must choose from a long list of options; groups of related choices are easier to grasp and remember than a single long list of options.It has crappy browser support and noone as ever used it. See WAInputTest >> #renderOptionGroupOn: for examples.'!
!WAOptionGroupTag categoriesForClass!Seaside-Canvas-Tags! !
!WAOptionGroupTag methodsFor!

initialize	super initialize.	self label: ''!

label: aString	"This attribute specifies the label for the option group."	self attributes at: 'label' put: aString!

tag	^ 'optgroup'! !
!WAOptionGroupTag categoriesFor: #initialize!initialization!public! !
!WAOptionGroupTag categoriesFor: #label:!attributes!public! !
!WAOptionGroupTag categoriesFor: #tag!accessing!public! !


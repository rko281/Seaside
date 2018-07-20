"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAOptionTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAOptionTag guid: (GUID fromString: '{e4255cfe-80fc-40bf-bc20-e0d08b731537}')!
WAOptionTag comment: 'The option element defines an option in a drop-down list. '!
!WAOptionTag categoriesForClass!Seaside-Canvas-Tags! !
!WAOptionTag methodsFor!

callback: aBlock	self value: (self storeCallback: (WAValueCallback on: aBlock))!

label: aString	"This attribute allows authors to specify a shorter label for an option than the content of the OPTION element. When specified, user agents should use the value of this attribute rather than the content of the OPTION element as the option label."	self attributes at: 'label' put: aString!

selected: aBoolean	self attributes at: 'selected' put: aBoolean!

tag	^ 'option'!

value: aString	self attributes at: 'value' put: aString!

value: anObject with: aListTag	self selected: (aListTag isSelected: anObject).	self value: (aListTag valueFor: anObject)	! !
!WAOptionTag categoriesFor: #callback:!callbacks!public! !
!WAOptionTag categoriesFor: #label:!attributes!public! !
!WAOptionTag categoriesFor: #selected:!attributes!public! !
!WAOptionTag categoriesFor: #tag!accessing!public! !
!WAOptionTag categoriesFor: #value:!attributes!public! !
!WAOptionTag categoriesFor: #value:with:!attributes!public! !


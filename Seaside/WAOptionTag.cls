"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAOptionTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAOptionTag guid: (GUID fromString: '{cae1cc8d-fe84-468e-a4f4-8eddeb70d2e8}')!

WAOptionTag comment: 'The option element defines an option in a drop-down list. '!

!WAOptionTag categoriesForClass!Tags! !

!WAOptionTag methodsFor!

callback: aBlock	self value: (self storeCallback: (WAValueCallback on: aBlock))!

label: aString	"This attribute allows authors to specify a shorter label for an option than the content of the OPTION element. When specified, user agents should use the value of this attribute rather than the content of the OPTION element as the option label."	self attributes at: 'label' put: aString!

selected: aBoolean	self attributes at: 'selected' put: aBoolean!

tag	^ 'option'!

value: aString	self attributes at: 'value' put: aString!

value: anObject with: aListTag	self selected: (aListTag isSelected: anObject).	self value: (aListTag valueFor: anObject)! !

!WAOptionTag categoriesForMethods!
callback:!callbacks!public! !
label:!attributes!public! !
selected:!attributes!public! !
tag!accessing!public! !
value:!attributes!public! !
value:with:!attributes!public! !
!


"Filed out from Dolphin Smalltalk"!

WAFormInputTag subclass: #WARadioButtonTag
	instanceVariableNames: 'group'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARadioButtonTag guid: (GUID fromString: '{aae439c1-b508-4c8b-85f9-04e7a340819a}')!

WARadioButtonTag comment: 'Radio buttons work like checkboxes. The difference is that radio buttons, when sharing a single control name, are exclusive. This means that only one of those radio buttons can be checked, and when it''s checked, the rest are automatically unchecked.Radio buttons must be created through a radio group. The callback is only called for the selected option.| group |group := html radioGroup.group radioButton	selected: aBoolean;	callback: [ self someThing ]'!

!WARadioButtonTag categoriesForClass!Seaside-Canvas-Tags! !

!WARadioButtonTag methodsFor!

beChecked	self selected: true!

beUnchecked	self selected: false!

callback: aBlock	"Only called if option was selected."		self attributes at: 'value' put: (self storeCallback: (WAValueCallback on: aBlock))!

checked: aBoolean	self attributes 		at: 'checked'		put: aBoolean!

group	^ group!

group: aRadioGroup	self name: aRadioGroup key.	group := aRadioGroup!

selected: aBoolean 	self checked: aBoolean!

type	^ 'radio'!

value: anObject	group isNil		ifTrue: [ ^ super value: anObject ].	group hasSelection 		ifTrue: [ self selected: (group isSelected: anObject) ].	group hasCallback 		ifTrue: [ super value: (group callbackValue: anObject) ]! !

!WARadioButtonTag categoriesForMethods!
beChecked!attributes!public! !
beUnchecked!attributes!public! !
callback:!callbacks!public! !
checked:!attributes!public! !
group!accessing!public! !
group:!accessing!public! !
selected:!attributes!public! !
type!accessing!public! !
value:!attributes!public! !
!


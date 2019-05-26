"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARadioGroup
	instanceVariableNames: 'canvas key values selected'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARadioGroup guid: (GUID fromString: '{86f9427e-f454-4eaf-b78d-d523fb830aed}')!
WARadioGroup comment: 'A WARadioGroup is a container for several related radio buttons. It must be used to create radio buttons.Example:| group |group := html radioGroup.group radioButton	selected: aBoolean;	callback: [ self someThing ].'!
!WARadioGroup categoriesForClass!Seaside-Canvas-Base! !
!WARadioGroup methodsFor!

callback: aBlock	values := Dictionary new.	key := canvas callbacks store: (WAValuesCallback on: aBlock values: values)!

callbackValue: anObject	^ self valuesAt: values size + 1 put: anObject!

hasCallback	^ values notNil!

hasSelection 	^ selected notNil!

initializeWithCanvas: aRenderCanvas	self initialize.	canvas := aRenderCanvas!

isSelected: anObject	"Test if anObject is currently selected." 	^ selected = anObject!

key	^ key ifNil: [ key := canvas callbacks store: WADispatchCallback new ]!

radioButton	^ canvas radioButton group: self!

selected: anObject	"Set anObject to be selected."	selected := anObject!

valuesAt: aKey put: anObject	values at: aKey put: anObject.	^ values size!

with: aBlock	^ aBlock value: self! !
!WARadioGroup categoriesFor: #callback:!private! !
!WARadioGroup categoriesFor: #callbackValue:!private! !
!WARadioGroup categoriesFor: #hasCallback!private! !
!WARadioGroup categoriesFor: #hasSelection!public!testing! !
!WARadioGroup categoriesFor: #initializeWithCanvas:!initialization!public! !
!WARadioGroup categoriesFor: #isSelected:!public!testing! !
!WARadioGroup categoriesFor: #key!accessing!public! !
!WARadioGroup categoriesFor: #radioButton!public!public api! !
!WARadioGroup categoriesFor: #selected:!accessing!public! !
!WARadioGroup categoriesFor: #valuesAt:put:!private! !
!WARadioGroup categoriesFor: #with:!public!public api! !

!WARadioGroup class methodsFor!

canvas: aRenderCanvas	^ self basicNew initializeWithCanvas: aRenderCanvas! !
!WARadioGroup class categoriesFor: #canvas:!accessing!public! !


"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WARadioGroup
	instanceVariableNames: 'canvas key values selected'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARadioGroup guid: (GUID fromString: '{3611b91f-1cb8-490b-adc4-99accaea8cbf}')!

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

!WARadioGroup categoriesForMethods!
callback:!private! !
callbackValue:!private! !
hasCallback!private! !
hasSelection!public!testing! !
initializeWithCanvas:!initialization!public! !
isSelected:!public!testing! !
key!accessing!public! !
radioButton!public!public api! !
selected:!accessing!public! !
valuesAt:put:!private! !
with:!public!public api! !
!

!WARadioGroup class methodsFor!

canvas: aRenderCanvas	^ self basicNew initializeWithCanvas: aRenderCanvas! !

!WARadioGroup class categoriesForMethods!
canvas:!accessing!public! !
!


"Filed out from Dolphin Smalltalk"!

WAObject subclass: #JSArgument
	instanceVariableNames: 'argument'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSArgument guid: (GUID fromString: '{a39a5e20-a74f-421d-a48d-c98ef010aa16}')!

JSArgument comment: 'I am a special case of JSArguments with only a singular argument. I am a performance optimization to avoid an array allocation.'!

!JSArgument categoriesForClass!Javascript-Core-Base! !

!JSArgument methodsFor!

initializeWith: anObject	self initialize.	argument := anObject!

javascriptOn: aRenderer	aRenderer arguments: [ 		aRenderer argument: argument ]! !

!JSArgument categoriesForMethods!
initializeWith:!initialization!public! !
javascriptOn:!printing!public! !
!

!JSArgument class methodsFor!

with: anObject	^ self basicNew		initializeWith: anObject! !

!JSArgument class categoriesForMethods!
with:!instance creation!public! !
!


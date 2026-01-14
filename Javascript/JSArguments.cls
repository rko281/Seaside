"Filed out from Dolphin Smalltalk"!

WAObject subclass: #JSArguments
	instanceVariableNames: 'arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSArguments guid: (GUID fromString: '{0924fa32-06d9-4301-9d9c-561ebac35a94}')!

JSArguments comment: 'I am a collection of Javascript function arguments.'!

!JSArguments categoriesForClass!Javascript-Core-Base! !

!JSArguments methodsFor!

initializeWithAll: aCollection	self initialize.	arguments := aCollection!

javascriptOn: aRenderer	aRenderer arguments: [		arguments do: [ :each | 			aRenderer argument: each ] ]! !

!JSArguments categoriesForMethods!
initializeWithAll:!initialization!public! !
javascriptOn:!printing!public! !
!

!JSArguments class methodsFor!

withAll: aCollection	^ self basicNew		initializeWithAll: aCollection! !

!JSArguments class categoriesForMethods!
withAll:!instance creation!public! !
!


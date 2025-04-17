"Filed out from Dolphin Smalltalk"!

JQWidget subclass: #JQProgressbar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQProgressbar guid: (GUID fromString: '{177e80b0-b43b-4888-bd7a-d325d5674990}')!

JQProgressbar comment: 'Make the selected elements progressbar.'!

!JQProgressbar categoriesForClass!Widgets! !

!JQProgressbar methodsFor!

getValue	"This method gets the current value of the progressbar."	self action: 'value'!

method	^ 'progressbar'!

onChange: anObject	"This event is triggered when the value of the progressbar changes."	self optionAt: 'change' put: anObject asFunction!

setValue: aNumber	"This method sets the current value of the progressbar."	self action: 'value' arguments: (Array with: aNumber)!

value: aNumber	"The value of the progressbar."	self optionAt: 'value' put: aNumber! !

!JQProgressbar categoriesForMethods!
getValue!actions!public! !
method!accessing!public! !
onChange:!events/generated!public! !
setValue:!actions!public! !
value:!options/generated!public! !
!


"Filed out from Dolphin Smalltalk"!

JQWidget subclass: #JQProgressbar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQProgressbar guid: (GUID fromString: '{494102bf-385f-4bf4-bcbb-b1bdc5b71a8f}')!

JQProgressbar comment: 'Make the selected elements progressbar.'!

!JQProgressbar categoriesForClass!JQuery-UI-Widgets! !

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


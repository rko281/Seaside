"Filed out from Dolphin Smalltalk 7"!

JQWidget subclass: #JQProgressbar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQProgressbar guid: (GUID fromString: '{33b4d6d2-3ff1-46ad-ae2e-c1aa9068ce72}')!
JQProgressbar comment: 'Make the selected elements progressbar.'!
!JQProgressbar categoriesForClass!JQuery-UI-Widgets! !
!JQProgressbar methodsFor!

getValue	"This method gets the current value of the progressbar."	self action: 'value'!

method	^ 'progressbar'!

onChange: anObject	"This event is triggered when the value of the progressbar changes."	self optionAt: 'change' put: anObject asFunction!

setValue: aNumber	"This method sets the current value of the progressbar."	self action: 'value' arguments: (Array with: aNumber)!

value: aNumber	"The value of the progressbar."	self optionAt: 'value' put: aNumber! !
!JQProgressbar categoriesFor: #getValue!actions!public! !
!JQProgressbar categoriesFor: #method!accessing!public! !
!JQProgressbar categoriesFor: #onChange:!events/generated!public! !
!JQProgressbar categoriesFor: #setValue:!actions!public! !
!JQProgressbar categoriesFor: #value:!options/generated!public! !


"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WATodoItemEditor
	instanceVariableNames: 'todoItem'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATodoItemEditor guid: (GUID fromString: '{0f56345f-e7ab-4332-8ea7-4a0aa9b83ece}')!

WATodoItemEditor comment: 'I am the component that represents an editable TODO line in the TODO application example'!

!WATodoItemEditor categoriesForClass!Seaside-Examples-Misc! !

!WATodoItemEditor methodsFor!

initializeOn: aWATodoItem	self initialize.	todoItem := aWATodoItem!

renderContentOn: html	html form: [		html textInput			class: 'edit';			callback: [ :value | todoItem description: value ];			value: todoItem description.		html submitButton			style: 'display:none';			callback: [ self answer ] ]! !

!WATodoItemEditor categoriesForMethods!
initializeOn:!initialization!public! !
renderContentOn:!public!rendering! !
!

!WATodoItemEditor class methodsFor!

on: aWATodoItem	^ self basicNew initializeOn: aWATodoItem! !

!WATodoItemEditor class categoriesForMethods!
on:!instance creation!public! !
!


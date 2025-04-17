"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WATodoItemEditor
	instanceVariableNames: 'todoItem'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATodoItemEditor guid: (GUID fromString: '{c0434139-048d-48c0-93bc-2da60db1e647}')!

WATodoItemEditor comment: 'I am the component that represents an editable TODO line in the TODO application example'!

!WATodoItemEditor categoriesForClass!Misc! !

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


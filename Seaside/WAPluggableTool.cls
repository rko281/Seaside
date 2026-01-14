"Filed out from Dolphin Smalltalk"!

WATool subclass: #WAPluggableTool
	instanceVariableNames: 'component'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPluggableTool guid: (GUID fromString: '{d8d915e1-c7b7-4486-98d0-75f04525cf8a}')!

WAPluggableTool comment: 'A WAPluggableTool is a wrapper component around tools that can''t be made subclasses of WATool. WATool is only really needed to provide the icon image.Instance Variables	component:		<WAComponent>component	- the component to render'!

!WAPluggableTool categoriesForClass!Seaside-Development-Core! !

!WAPluggableTool methodsFor!

children	^ Array with: component!

initializeWith: aComponent	self initialize.	component := aComponent.	component onAnswer: [ self answer ]! !

!WAPluggableTool categoriesForMethods!
children!hooks!public! !
initializeWith:!initialization!public! !
!

!WAPluggableTool class methodsFor!

on: aComponent	^ self basicNew		initializeWith: aComponent;		yourself! !

!WAPluggableTool class categoriesForMethods!
on:!instance creation!public! !
!


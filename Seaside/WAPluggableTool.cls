"Filed out from Dolphin Smalltalk 7"!

WATool subclass: #WAPluggableTool
	instanceVariableNames: 'component'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPluggableTool guid: (GUID fromString: '{97e51898-2aad-4018-82d2-ac2a59377e24}')!
WAPluggableTool comment: 'A WAPluggableTool is a wrapper component around tools that can''t be made subclasses of WATool. WATool is only really needed to provide the icon image.Instance Variables	component:		<WAComponent>component	- the component to render'!
!WAPluggableTool categoriesForClass!Seaside-Development-Core! !
!WAPluggableTool methodsFor!

children	^ Array with: component!

initializeWith: aComponent	self initialize.	component := aComponent.	component onAnswer: [ self answer ]! !
!WAPluggableTool categoriesFor: #children!hooks!public! !
!WAPluggableTool categoriesFor: #initializeWith:!initialization!public! !

!WAPluggableTool class methodsFor!

on: aComponent	^ self basicNew		initializeWith: aComponent;		yourself! !
!WAPluggableTool class categoriesFor: #on:!instance creation!public! !


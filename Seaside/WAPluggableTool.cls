"Filed out from Dolphin Smalltalk"!

WATool subclass: #WAPluggableTool
	instanceVariableNames: 'component'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPluggableTool guid: (GUID fromString: '{3e938868-998f-4c5c-b993-3f12ce6f65a4}')!

WAPluggableTool comment: 'A WAPluggableTool is a wrapper component around tools that can''t be made subclasses of WATool. WATool is only really needed to provide the icon image.Instance Variables	component:		<WAComponent>component	- the component to render'!

!WAPluggableTool categoriesForClass!Core! !

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


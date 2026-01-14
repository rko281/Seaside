"Filed out from Dolphin Smalltalk"!

WADecoration subclass: #WAWidgetDecoration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWidgetDecoration guid: (GUID fromString: '{55f5d385-ae5b-4846-a8bf-3b5da891e311}')!

WAWidgetDecoration comment: 'An abstract widget decoration'!

!WAWidgetDecoration categoriesForClass!Seaside-Widgets-Decorations! !

!WAWidgetDecoration methodsFor!

rendererClass	"Make sure we use WAHtmlCanvas even if a different renderer is default."	^ WAHtmlCanvas! !

!WAWidgetDecoration categoriesForMethods!
rendererClass!public!rendering! !
!

!WAWidgetDecoration class methodsFor!

isAbstract	^ self == WAWidgetDecoration! !

!WAWidgetDecoration class categoriesForMethods!
isAbstract!public!testing! !
!


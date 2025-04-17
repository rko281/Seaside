"Filed out from Dolphin Smalltalk"!

WADecoration subclass: #WAWidgetDecoration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWidgetDecoration guid: (GUID fromString: '{0f0d952c-08c9-42d8-8168-5d6487255c39}')!

WAWidgetDecoration comment: 'An abstract widget decoration'!

!WAWidgetDecoration categoriesForClass!Decorations! !

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


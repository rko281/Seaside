"Filed out from Dolphin Smalltalk 7"!

WADecoration subclass: #WAWidgetDecoration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWidgetDecoration guid: (GUID fromString: '{8f051ad8-036a-49b1-b3ee-30c4fe370c7c}')!
WAWidgetDecoration comment: ''!
!WAWidgetDecoration categoriesForClass!Seaside-Widgets-Decorations! !
!WAWidgetDecoration methodsFor!

rendererClass	"Make sure we use WAHtmlCanvas even if a different renderer is default."	^ WAHtmlCanvas! !
!WAWidgetDecoration categoriesFor: #rendererClass!public!rendering! !


"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAExampleComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExampleComponent guid: (GUID fromString: '{345bc8f7-ef5f-4e7e-afab-78d4c72a6b9c}')!

WAExampleComponent comment: 'Superclass for example components'!

!WAExampleComponent categoriesForClass!Misc! !

!WAExampleComponent methodsFor!

rendererClass	^ WAHtmlCanvas! !

!WAExampleComponent categoriesForMethods!
rendererClass!public!rendering! !
!

!WAExampleComponent class methodsFor!

canBeRoot	^ true!

isAbstract 	^ self == WAExampleComponent! !

!WAExampleComponent class categoriesForMethods!
canBeRoot!public!testing! !
isAbstract!public!testing! !
!


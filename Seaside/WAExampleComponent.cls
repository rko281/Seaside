"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAExampleComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExampleComponent guid: (GUID fromString: '{89907a64-af59-499c-b338-c4fa660082c2}')!

WAExampleComponent comment: 'Superclass for example components'!

!WAExampleComponent categoriesForClass!Seaside-Examples-Misc! !

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


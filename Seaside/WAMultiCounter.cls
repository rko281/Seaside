"Filed out from Dolphin Smalltalk 7"!

WAExampleComponent subclass: #WAMultiCounter
	instanceVariableNames: 'counters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMultiCounter guid: (GUID fromString: '{57c7c7fb-f3f1-4950-8b3c-08a4fb1e6d50}')!
WAMultiCounter comment: 'A WAMultiCounter is a component that consists of several instances of WACounter. Be sure to understand WACounter.The lesson to learn here is how Seaside components can be composed of other components.Instance Variables	counters:		<Collection<WACounter>>counters	- a Collection of components (instances of WACounter) '!
!WAMultiCounter categoriesForClass!Seaside-Examples-Misc! !
!WAMultiCounter methodsFor!

children	^ counters!

initialize	super initialize.	counters := (1 to: 5) collect: [ :each | WACounter new ]!

renderContentOn: html	counters		do: [ :each | html render: each ]		separatedBy: [ html horizontalRule ]! !
!WAMultiCounter categoriesFor: #children!hooks!public! !
!WAMultiCounter categoriesFor: #initialize!initialization!public! !
!WAMultiCounter categoriesFor: #renderContentOn:!public!rendering! !

!WAMultiCounter class methodsFor!

description	^ 'Multiple Seaside components on one page'!

initialize	WAAdmin register: self asApplicationAt: 'examples/multicounter'! !
!WAMultiCounter class categoriesFor: #description!accessing!public! !
!WAMultiCounter class categoriesFor: #initialize!initialization!public! !


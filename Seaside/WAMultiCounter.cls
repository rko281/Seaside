"Filed out from Dolphin Smalltalk"!

WAExampleComponent subclass: #WAMultiCounter
	instanceVariableNames: 'counters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMultiCounter guid: (GUID fromString: '{97294f91-9637-4b23-9943-32d8cd522437}')!

WAMultiCounter comment: 'A WAMultiCounter is a component that consists of several instances of WACounter. Be sure to understand WACounter.The lesson to learn here is how Seaside components can be composed of other components.Instance Variables	counters:		<Collection<WACounter>>counters	- a Collection of components (instances of WACounter) '!

!WAMultiCounter categoriesForClass!Misc! !

!WAMultiCounter methodsFor!

children	^ counters!

initialize	super initialize.	counters := (1 to: 5) collect: [ :each | WACounter new ]!

renderContentOn: html	counters		do: [ :each | html render: each ]		separatedBy: [ html horizontalRule ]! !

!WAMultiCounter categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
!

!WAMultiCounter class methodsFor!

description	^ 'Multiple Seaside components on one page'!

initialize	WAAdmin register: self asApplicationAt: 'examples/multicounter'! !

!WAMultiCounter class categoriesForMethods!
description!accessing!public! !
initialize!initialization!public! !
!


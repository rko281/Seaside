"Filed out from Dolphin Smalltalk"!

WAExampleComponent subclass: #WACounter
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACounter guid: (GUID fromString: '{7d4dd2c4-5d1c-4d05-949d-8ec57ff33ec7}')!

WACounter comment: 'A WACounter is component that displays a number. Additionally it has two links that allow the user to increase or decrease this number by 1. The lesson to learn here is how the Seaside callback mechanism is used, how anchors can be used to trigger actions.Instance Variables	count:		<Integer>count	- the number to display, default 0'!

!WACounter categoriesForClass!Misc! !

!WACounter methodsFor!

count	^ count!

count: anInteger	count := anInteger!

decrease	count := count - 1!

increase	count := count + 1!

initialize	super initialize.	self count: 0!

renderContentOn: html	html heading: count.	html anchor		callback: [ self increase ];		with: '++'.	html space.	html anchor		callback: [ self decrease ];		with: '--'!

states	^ Array with: self! !

!WACounter categoriesForMethods!
count!accessing!public! !
count:!accessing!public! !
decrease!actions!public! !
increase!actions!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
states!hooks!public! !
!

!WACounter class methodsFor!

description	^ 'A very simple Seaside application'!

exampleComponent	^ self new!

handlerName	^ 'examples/counter'!

initialize	WAAdmin register: self asApplicationAt: self handlerName! !

!WACounter class categoriesForMethods!
description!accessing!public! !
exampleComponent!examples!public! !
handlerName!accessing!public! !
initialize!initialization!public! !
!


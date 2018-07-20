"Filed out from Dolphin Smalltalk 7"!

WAExampleComponent subclass: #WACounter
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACounter guid: (GUID fromString: '{5c74814f-8337-4f29-a819-bb7db0c27f68}')!
WACounter comment: 'A WACounter is component that displays a number. Additionally it has two links that allow the user to increase or decrease this number by 1. The lesson to learn here is how the Seaside callback mechanism is used, how anchors can be used to trigger actions.Instance Variables	count:		<Integer>count	- the number to display, default 0'!
!WACounter categoriesForClass!Seaside-Examples-Misc! !
!WACounter methodsFor!

count	^ count!

count: anInteger	count := anInteger!

decrease	count := count - 1!

increase	count := count + 1!

initialize	super initialize.	self count: 0!

renderContentOn: html	html heading: count.	html anchor		callback: [ self increase ];		with: '++'.	html space.	html anchor		callback: [ self decrease ];		with: '--'!

states	^ Array with: self! !
!WACounter categoriesFor: #count!accessing!public! !
!WACounter categoriesFor: #count:!accessing!public! !
!WACounter categoriesFor: #decrease!actions!public! !
!WACounter categoriesFor: #increase!actions!public! !
!WACounter categoriesFor: #initialize!initialization!public! !
!WACounter categoriesFor: #renderContentOn:!public!rendering! !
!WACounter categoriesFor: #states!hooks!public! !

!WACounter class methodsFor!

description	^ 'A very simple Seaside application'!

exampleComponent	^ self new!

handlerName	^ 'examples/counter'!

initialize	WAAdmin register: self asApplicationAt: self handlerName! !
!WACounter class categoriesFor: #description!accessing!public! !
!WACounter class categoriesFor: #exampleComponent!examples!public! !
!WACounter class categoriesFor: #handlerName!accessing!public! !
!WACounter class categoriesFor: #initialize!initialization!public! !


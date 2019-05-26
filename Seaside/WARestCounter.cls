"Filed out from Dolphin Smalltalk 7"!

WAExampleComponent subclass: #WARestCounter
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARestCounter guid: (GUID fromString: '{1646d0ad-5189-40db-b29c-d9c10a9c7e88}')!
WARestCounter comment: 'I demonstrate how to use components that put state into URLs so that action can be taken once a session is expired.'!
!WARestCounter categoriesForClass!Seaside-REST-Examples! !
!WARestCounter methodsFor!

count	^ count!

count: anInteger	count := anInteger!

decrease	count := count - 1!

increase	count := count + 1!

initialize	super initialize.	self count: 0!

renderContentOn: html	html heading: count.	html anchor		extraPath: '..';		extraPath: (self count + 1) greaseString;		callback: [ self increase ];		with: '++'.	html space.	html anchor		extraPath: '..';		extraPath: (self count - 1) greaseString;		callback: [ self decrease ];		with: '--'!

states	^ Array with: self!

updateUrl: anUrl	super updateUrl: anUrl.	anUrl addToPath: self count greaseString! !
!WARestCounter categoriesFor: #count!accessing!public! !
!WARestCounter categoriesFor: #count:!accessing!public! !
!WARestCounter categoriesFor: #decrease!actions!public! !
!WARestCounter categoriesFor: #increase!actions!public! !
!WARestCounter categoriesFor: #initialize!initialization!public! !
!WARestCounter categoriesFor: #renderContentOn:!public!rendering! !
!WARestCounter categoriesFor: #states!hooks!public! !
!WARestCounter categoriesFor: #updateUrl:!hooks!public! !

!WARestCounter class methodsFor!

register	(WAAdmin register: WARestCounter asApplicationAt: 'rest-counter')		addFilter: WARestCounterStarter new! !
!WARestCounter class categoriesFor: #register!public!registration! !


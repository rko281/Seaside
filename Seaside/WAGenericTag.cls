"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAGenericTag
	instanceVariableNames: 'tag'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAGenericTag guid: (GUID fromString: '{111aca4b-7057-4fc0-b317-238508a1a0ec}')!

WAGenericTag comment: 'A WAGenericTag is the class for all tags that do not have a class of their own.Instance Variables	tag:		<String>tag	- the name of the tag'!

!WAGenericTag categoriesForClass!Base! !

!WAGenericTag methodsFor!

initializeWithTag: aString	self initialize.	tag := aString!

tag	^ tag! !

!WAGenericTag categoriesForMethods!
initializeWithTag:!initialization!public! !
tag!accessing!public! !
!

!WAGenericTag class methodsFor!

tag: aString	^ self basicNew initializeWithTag: aString; yourself! !

!WAGenericTag class categoriesForMethods!
tag:!instance creation!public! !
!


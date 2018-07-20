"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAGenericTag
	instanceVariableNames: 'tag'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAGenericTag guid: (GUID fromString: '{ac55e187-18a0-42d2-aa5b-be1e50f7e157}')!
WAGenericTag comment: 'A WAGenericTag is the class for all tags that do not have a class of their own.Instance Variables	tag:		<String>tag	- the name of the tag'!
!WAGenericTag categoriesForClass!Seaside-Canvas! !
!WAGenericTag methodsFor!

initializeWithTag: aString	self initialize.	tag := aString!

tag	^ tag! !
!WAGenericTag categoriesFor: #initializeWithTag:!initialization!public! !
!WAGenericTag categoriesFor: #tag!accessing!public! !

!WAGenericTag class methodsFor!

tag: aString	^ self basicNew initializeWithTag: aString; yourself! !
!WAGenericTag class categoriesFor: #tag:!instance creation!public! !


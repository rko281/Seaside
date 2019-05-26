"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAGenericTag
	instanceVariableNames: 'tag'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAGenericTag guid: (GUID fromString: '{f8c22111-22e4-4996-8989-c39386d9039d}')!
WAGenericTag comment: 'A WAGenericTag is the class for all tags that do not have a class of their own.Instance Variables	tag:		<String>tag	- the name of the tag'!
!WAGenericTag categoriesForClass!Seaside-Canvas-Base! !
!WAGenericTag methodsFor!

initializeWithTag: aString	self initialize.	tag := aString!

tag	^ tag! !
!WAGenericTag categoriesFor: #initializeWithTag:!initialization!public! !
!WAGenericTag categoriesFor: #tag!accessing!public! !

!WAGenericTag class methodsFor!

tag: aString	^ self basicNew initializeWithTag: aString; yourself! !
!WAGenericTag class categoriesFor: #tag:!instance creation!public! !


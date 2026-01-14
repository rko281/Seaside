"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAGenericTag
	instanceVariableNames: 'tag'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAGenericTag guid: (GUID fromString: '{ec3d4253-2cd4-4b60-82af-ff8fdfe6a3b9}')!

WAGenericTag comment: 'A WAGenericTag is the class for all tags that do not have a class of their own.Instance Variables	tag:		<String>tag	- the name of the tag'!

!WAGenericTag categoriesForClass!Seaside-Canvas-Base! !

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


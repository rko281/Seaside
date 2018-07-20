"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAValueHolder
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAValueHolder guid: (GUID fromString: '{91c39f01-2ceb-4f62-bb26-ee1391bc80a2}')!
WAValueHolder comment: 'I wrap a single object. I am like value holder except that I am portable and don''t include the Model cruft in Squeak.'!
!WAValueHolder categoriesForClass!Seaside-Core-Utilities! !
!WAValueHolder methodsFor!

contents	^ contents!

contents: anObject	contents := anObject!

printOn: aStream	super printOn: aStream.	aStream nextPutAll: ' contents: '; print: self contents! !
!WAValueHolder categoriesFor: #contents!accessing!public! !
!WAValueHolder categoriesFor: #contents:!accessing!public! !
!WAValueHolder categoriesFor: #printOn:!printing!public! !

!WAValueHolder class methodsFor!

with: anObject	^ self new contents: anObject! !
!WAValueHolder class categoriesFor: #with:!instance creation!public! !


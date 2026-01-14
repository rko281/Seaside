"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAValueHolder
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAValueHolder guid: (GUID fromString: '{23481024-3b7a-4fbc-8505-45fd54ecf74a}')!

WAValueHolder comment: 'I wrap a single object. I am like value holder except that I am portable and don''t include the Model cruft in Squeak.'!

!WAValueHolder categoriesForClass!Seaside-Core-Utilities! !

!WAValueHolder methodsFor!

contents	^ contents!

contents: anObject	contents := anObject!

printOn: aStream	super printOn: aStream.	aStream nextPutAll: ' contents: '; print: self contents! !

!WAValueHolder categoriesForMethods!
contents!accessing!public! !
contents:!accessing!public! !
printOn:!printing!public! !
!

!WAValueHolder class methodsFor!

with: anObject	^ self new contents: anObject! !

!WAValueHolder class categoriesForMethods!
with:!instance creation!public! !
!


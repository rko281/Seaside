"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAValueHolder
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAValueHolder guid: (GUID fromString: '{250a984b-b724-4251-99ce-b15cf33d4744}')!

WAValueHolder comment: 'I wrap a single object. I am like value holder except that I am portable and don''t include the Model cruft in Squeak.'!

!WAValueHolder categoriesForClass!Utilities! !

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


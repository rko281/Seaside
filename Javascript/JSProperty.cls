"Filed out from Dolphin Smalltalk"!

JSMember subclass: #JSProperty
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSProperty guid: (GUID fromString: '{f224e5e6-81b2-4364-9a81-84d843448c41}')!

JSProperty comment: 'I access a property of the decorated object.'!

!JSProperty categoriesForClass!Decorations! !

!JSProperty methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPut: $[;		javascript: self name;		nextPut: $]! !

!JSProperty categoriesForMethods!
javascriptContentOn:!printing!public! !
!


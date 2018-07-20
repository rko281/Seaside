"Filed out from Dolphin Smalltalk 7"!

JSMember subclass: #JSProperty
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSProperty guid: (GUID fromString: '{05558a53-76a4-481b-b178-836e7dd13f31}')!
JSProperty comment: 'I access a property of the decorated object.'!
!JSProperty categoriesForClass!Javascript-Core-Decorations! !
!JSProperty methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPut: $[;		javascript: self name;		nextPut: $]! !
!JSProperty categoriesFor: #javascriptContentOn:!printing!public! !


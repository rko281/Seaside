"Filed out from Dolphin Smalltalk 7"!

JSMember subclass: #JSProperty
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSProperty guid: (GUID fromString: '{280fd7c1-65d1-4b0b-ab7a-26099bc91866}')!
JSProperty comment: 'I access a property of the decorated object.'!
!JSProperty categoriesForClass!Javascript-Core-Decorations! !
!JSProperty methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPut: $[;		javascript: self name;		nextPut: $]! !
!JSProperty categoriesFor: #javascriptContentOn:!printing!public! !


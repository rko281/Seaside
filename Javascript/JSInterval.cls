"Filed out from Dolphin Smalltalk 7"!

JSTimed subclass: #JSInterval
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSInterval guid: (GUID fromString: '{bc3a200b-5284-42b3-92a8-43bfe5a4b3b4}')!
JSInterval comment: 'I periodically execute the decorated object.'!
!JSInterval categoriesForClass!Javascript-Core-Decorations! !
!JSInterval methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'setInterval(function(){'.	super javascriptContentOn: aStream.	aStream		nextPutAll: '},';		javascript: self duration;		nextPut: $)! !
!JSInterval categoriesFor: #javascriptContentOn:!printing!public! !


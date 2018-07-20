"Filed out from Dolphin Smalltalk 7"!

JSTimed subclass: #JSInterval
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSInterval guid: (GUID fromString: '{bc8fa31e-bd01-4f44-8386-f1ca1b5363b8}')!
JSInterval comment: 'I periodically execute the decorated object.'!
!JSInterval categoriesForClass!Javascript-Core-Decorations! !
!JSInterval methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'setInterval(function(){'.	super javascriptContentOn: aStream.	aStream		nextPutAll: '},';		javascript: self duration;		nextPut: $)! !
!JSInterval categoriesFor: #javascriptContentOn:!printing!public! !


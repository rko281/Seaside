"Filed out from Dolphin Smalltalk"!

JSTimed subclass: #JSInterval
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSInterval guid: (GUID fromString: '{e5f80ac9-622d-4069-815c-b7465fbd95f1}')!

JSInterval comment: 'I periodically execute the decorated object.'!

!JSInterval categoriesForClass!Decorations! !

!JSInterval methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'setInterval(function(){'.	super javascriptContentOn: aStream.	aStream		nextPutAll: '},';		javascript: self duration;		nextPut: $)! !

!JSInterval categoriesForMethods!
javascriptContentOn:!printing!public! !
!


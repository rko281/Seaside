"Filed out from Dolphin Smalltalk 7"!

JSTimed subclass: #JSTimeout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSTimeout guid: (GUID fromString: '{83e97c7d-f59b-487a-b990-c80bd86c92b8}')!
JSTimeout comment: 'I evaluate the decorated object after a timeout.'!
!JSTimeout categoriesForClass!Javascript-Core-Decorations! !
!JSTimeout methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'setTimeout(function(){'.	super javascriptContentOn: aStream.	aStream		nextPutAll: '},';		javascript: self duration;		nextPut: $)! !
!JSTimeout categoriesFor: #javascriptContentOn:!printing!public! !


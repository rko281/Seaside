"Filed out from Dolphin Smalltalk 7"!

JSTimed subclass: #JSTimeout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSTimeout guid: (GUID fromString: '{8f7e3ab6-9d2b-447c-b9f2-d0e206c71d0d}')!
JSTimeout comment: 'I evaluate the decorated object after a timeout.'!
!JSTimeout categoriesForClass!Javascript-Core-Decorations! !
!JSTimeout methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'setTimeout(function(){'.	super javascriptContentOn: aStream.	aStream		nextPutAll: '},';		javascript: self duration;		nextPut: $)! !
!JSTimeout categoriesFor: #javascriptContentOn:!printing!public! !


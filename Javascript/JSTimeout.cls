"Filed out from Dolphin Smalltalk"!

JSTimed subclass: #JSTimeout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSTimeout guid: (GUID fromString: '{4a75123c-bfd6-4185-a2e3-f163b49936b3}')!

JSTimeout comment: 'I evaluate the decorated object after a timeout.'!

!JSTimeout categoriesForClass!Decorations! !

!JSTimeout methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'setTimeout(function(){'.	super javascriptContentOn: aStream.	aStream		nextPutAll: '},';		javascript: self duration;		nextPut: $)! !

!JSTimeout categoriesForMethods!
javascriptContentOn:!printing!public! !
!


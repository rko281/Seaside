"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WATransactionFilter
	instanceVariableNames: 'closed'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATransactionFilter guid: (GUID fromString: '{b6a32e3e-1fa7-421f-84f7-beb2832a783f}')!

WATransactionFilter comment: 'This filter provides the implementation of WAComponent>>#isolate:. It rejects all requests as soon as the filter has been closed.'!

!WATransactionFilter categoriesForClass!Seaside-Core-Filter! !

!WATransactionFilter methodsFor!

close	closed := true!

handleFiltered: aRequestContext 	self isClosed 		ifFalse: [ super handleFiltered: aRequestContext ]		ifTrue: [ 			aRequestContext responseGenerator				pageExpired;				respond ]!

initialize	super initialize.	closed := false!

isClosed	^ closed! !

!WATransactionFilter categoriesForMethods!
close!actions!public! !
handleFiltered:!processing!public! !
initialize!initialization!public! !
isClosed!public!testing! !
!


"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WATransactionFilter
	instanceVariableNames: 'closed'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATransactionFilter guid: (GUID fromString: '{3130b6c6-212c-46b0-a89a-18335cf7056e}')!
WATransactionFilter comment: 'This filter provides the implementation of WAComponent>>#isolate:. It rejects all requests as soon as the filter has been closed.'!
!WATransactionFilter categoriesForClass!Seaside-Core-Filter! !
!WATransactionFilter methodsFor!

close	closed := true!

handleFiltered: aRequestContext 	self isClosed 		ifFalse: [ super handleFiltered: aRequestContext ]		ifTrue: [ 			aRequestContext responseGenerator				pageExpired;				respond ]!

initialize	super initialize.	closed := false!

isClosed	^ closed! !
!WATransactionFilter categoriesFor: #close!actions!public! !
!WATransactionFilter categoriesFor: #handleFiltered:!processing!public! !
!WATransactionFilter categoriesFor: #initialize!initialization!public! !
!WATransactionFilter categoriesFor: #isClosed!public!testing! !


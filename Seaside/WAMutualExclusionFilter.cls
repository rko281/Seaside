"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WAMutualExclusionFilter
	instanceVariableNames: 'mutex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMutualExclusionFilter guid: (GUID fromString: '{57d6d983-5dbe-4f8e-b32b-3a768a6b5a51}')!

WAMutualExclusionFilter comment: ''!

!WAMutualExclusionFilter categoriesForClass!Filter! !

!WAMutualExclusionFilter methodsFor!

handleFiltered: aRequestContext	(self shouldTerminate: aRequestContext)		ifTrue: [ self terminate: aRequestContext ]		ifFalse: [ mutex critical: [ super handleFiltered: aRequestContext ] ]!

initialize	super initialize.	mutex := WAMutex new!

shouldTerminate: aRequestContext	^ (aRequestContext request fields includesKey: 'terminate')		and: [ aRequestContext application preferenceAt: #sessionAllowTermination ]!

terminate: aRequestContext	mutex terminateOwner.	aRequestContext respond: [ :response |		response			contentType: WAMimeType textPlain;			nextPutAll: 'Process terminated' ]! !

!WAMutualExclusionFilter categoriesForMethods!
handleFiltered:!processing!public! !
initialize!initialization!public! !
shouldTerminate:!private! !
terminate:!private! !
!


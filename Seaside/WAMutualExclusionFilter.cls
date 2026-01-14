"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WAMutualExclusionFilter
	instanceVariableNames: 'mutex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMutualExclusionFilter guid: (GUID fromString: '{94d1c766-f6ef-465b-91c4-529435431cf5}')!

WAMutualExclusionFilter comment: ''!

!WAMutualExclusionFilter categoriesForClass!Seaside-Session-Filter! !

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


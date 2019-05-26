"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WAMutualExclusionFilter
	instanceVariableNames: 'mutex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMutualExclusionFilter guid: (GUID fromString: '{0be75bb5-d2a2-486e-b540-354e65528b62}')!
WAMutualExclusionFilter comment: ''!
!WAMutualExclusionFilter categoriesForClass!Seaside-Session-Filter! !
!WAMutualExclusionFilter methodsFor!

handleFiltered: aRequestContext	(self shouldTerminate: aRequestContext)		ifTrue: [ self terminate: aRequestContext ]		ifFalse: [ mutex critical: [ super handleFiltered: aRequestContext ] ]!

initialize	super initialize.	mutex := WAMutex new!

shouldTerminate: aRequestContext	^ (aRequestContext request fields includesKey: 'terminate')		and: [ aRequestContext application preferenceAt: #sessionAllowTermination ]!

terminate: aRequestContext	mutex terminateOwner.	aRequestContext respond: [ :response |		response			contentType: WAMimeType textPlain;			nextPutAll: 'Process terminated' ]! !
!WAMutualExclusionFilter categoriesFor: #handleFiltered:!processing!public! !
!WAMutualExclusionFilter categoriesFor: #initialize!initialization!public! !
!WAMutualExclusionFilter categoriesFor: #shouldTerminate:!private! !
!WAMutualExclusionFilter categoriesFor: #terminate:!private! !


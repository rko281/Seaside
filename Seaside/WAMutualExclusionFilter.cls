"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WAMutualExclusionFilter
	instanceVariableNames: 'mutex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMutualExclusionFilter guid: (GUID fromString: '{86eefe60-f516-4573-98d5-0e4f6ba1345e}')!
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


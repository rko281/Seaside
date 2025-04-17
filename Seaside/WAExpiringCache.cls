"Filed out from Dolphin Smalltalk"!

WACache subclass: #WAExpiringCache
	instanceVariableNames: 'maximumSize maximumRelativeAge maximumAbsoluteAge overflowAction'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExpiringCache guid: (GUID fromString: '{c2133d35-0e47-44db-9600-768d1deaf18d}')!

WAExpiringCache comment: 'I am the abstract base class for caches that remove entries. Subclasses are intended to use to track sessions.    Instance Variables	maximumSize			<Integer>	maximumRelativeAge		<Integer>	maximumAbsoluteAge	<Integer>	overflowAction			<Symbol>				maximumSize:	Number of sessions supported. When this limit is reached the overflow action is run. 0 for no maximum size. Has to be positive.maximumRelativeAge:	After so many seconds of inactivity a session is considered expired. 0 for no limit. Has to be positive.maximumAbsoluteAge:	After so many seconds after its creation a session is considered expired no matter when it was last accessed. 0 for no limit. Has to be positive.overflowAction:	What to do when the maximum number of sessions is reached. Only matters when the maximum size is bigger than 0.	Possible values:		#removeRelativeOldest remove the entry that hasn''t been accessed for the longest time		#removeAbsoluteOldest remove the entry that has been created the longest time ago		#signalError signal WAMaximumNumberOfSessionsExceededError'!

!WAExpiringCache categoriesForClass!Cache! !

!WAExpiringCache methodsFor!

cacheEntryRemoved: anObject	(anObject respondsTo: #unregistered) ifTrue: [		[ anObject unregistered ]			on: Error			do: [ :e | "keep reaping process running" ] ]!

initializeWithInitialSize: aSizeInteger maximumSize: aMaximumSizeInteger maximumAbsoluteAge: aMaximumAbsoluteAge maximumRelativeAge: aMaximumRelativeAge overflowAction: aOverflowActionSymbol	self initialize.	maximumSize := aMaximumSizeInteger.	maximumAbsoluteAge := aMaximumAbsoluteAge.	maximumRelativeAge := aMaximumRelativeAge.	overflowAction := aOverflowActionSymbol!

keyAtValue: anObject ifAbsent: aBlock	self shouldNotImplement!

remove: anObject	self shouldNotImplement!

removeKey: aKey	self subclassResponsibility! !

!WAExpiringCache categoriesForMethods!
cacheEntryRemoved:!private! !
initializeWithInitialSize:maximumSize:maximumAbsoluteAge:maximumRelativeAge:overflowAction:!initialization!public! !
keyAtValue:ifAbsent:!accessing!public! !
remove:!public!removing! !
removeKey:!public!removing! !
!

!WAExpiringCache class methodsFor!

initialSize: aSizeInteger maximumSize: aMaximumSizeInteger maximumAbsoluteAge: aMaximumAbsoluteAge maximumRelativeAge: aMaximumRelativeAge overflowAction: aOverflowActionSymbol	^ self basicNew		initializeWithInitialSize: aSizeInteger maximumSize: aMaximumSizeInteger maximumAbsoluteAge: aMaximumAbsoluteAge maximumRelativeAge: aMaximumRelativeAge overflowAction: aOverflowActionSymbol;		yourself! !

!WAExpiringCache class categoriesForMethods!
initialSize:maximumSize:maximumAbsoluteAge:maximumRelativeAge:overflowAction:!instance creation!public! !
!


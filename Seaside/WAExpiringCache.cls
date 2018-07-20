"Filed out from Dolphin Smalltalk 7"!

WACache subclass: #WAExpiringCache
	instanceVariableNames: 'maximumSize maximumRelativeAge maximumAbsoluteAge overflowAction'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExpiringCache guid: (GUID fromString: '{4c6228c9-ad41-4819-a5de-01feaaadbb29}')!
WAExpiringCache comment: 'I am the abstract base class for caches that remove entries. Subclasses are intended to use to track sessions.    Instance Variables	maximumSize			<Integer>	maximumRelativeAge		<Integer>	maximumAbsoluteAge	<Integer>	overflowAction			<Symbol>'!
!WAExpiringCache categoriesForClass!Seaside-Core-Cache! !
!WAExpiringCache methodsFor!

cacheEntryRemoved: anObject	(anObject respondsTo: #unregistered) ifTrue: [		[ anObject unregistered ]			on: Error			do: [ "keep reaping process running" ] ]!

initializeWithInitialSize: aSizeInteger maximumSize: aMaximumSizeInteger maximumAbsoluteAge: aMaximumAbsoluteAge maximumRelativeAge: aMaximumRelativeAge overflowAction: aOverflowActionSymbol	self initialize.	maximumSize := aMaximumSizeInteger.	maximumAbsoluteAge := aMaximumAbsoluteAge.	maximumRelativeAge := aMaximumRelativeAge.	overflowAction := aOverflowActionSymbol!

keyAtValue: anObject ifAbsent: aBlock	self shouldNotImplement!

remove: anObject	self shouldNotImplement!

removeKey: aKey	self subclassResponsibility! !
!WAExpiringCache categoriesFor: #cacheEntryRemoved:!private! !
!WAExpiringCache categoriesFor: #initializeWithInitialSize:maximumSize:maximumAbsoluteAge:maximumRelativeAge:overflowAction:!initialization!public! !
!WAExpiringCache categoriesFor: #keyAtValue:ifAbsent:!accessing!public! !
!WAExpiringCache categoriesFor: #remove:!public!removing! !
!WAExpiringCache categoriesFor: #removeKey:!public!removing! !

!WAExpiringCache class methodsFor!

initialSize: aSizeInteger maximumSize: aMaximumSizeInteger maximumAbsoluteAge: aMaximumAbsoluteAge maximumRelativeAge: aMaximumRelativeAge overflowAction: aOverflowActionSymbol	^ self basicNew		initializeWithInitialSize: aSizeInteger maximumSize: aMaximumSizeInteger maximumAbsoluteAge: aMaximumAbsoluteAge maximumRelativeAge: aMaximumRelativeAge overflowAction: aOverflowActionSymbol;		yourself!

newLikeOldCache	"creates a new cache configured similar to the one in Seaside <= 3.1"	^ self initialSize: 13		maximumSize: 0		maximumAbsoluteAge: 0		maximumRelativeAge: 600		overflowAction: nil! !
!WAExpiringCache class categoriesFor: #initialSize:maximumSize:maximumAbsoluteAge:maximumRelativeAge:overflowAction:!instance creation!public! !
!WAExpiringCache class categoriesFor: #newLikeOldCache!instance creation!public! !


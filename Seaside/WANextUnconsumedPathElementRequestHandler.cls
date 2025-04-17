"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WANextUnconsumedPathElementRequestHandler
	instanceVariableNames: 'nextUnconsumedPathElement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WANextUnconsumedPathElementRequestHandler guid: (GUID fromString: '{be7f494c-b111-4f82-9cca-2b1aea13bd40}')!

WANextUnconsumedPathElementRequestHandler comment: ''!

!WANextUnconsumedPathElementRequestHandler categoriesForClass!RequestHandling! !

!WANextUnconsumedPathElementRequestHandler methodsFor!

handle: aRequestContext	| consumer |	consumer := aRequestContext consumer.	nextUnconsumedPathElement := consumer atEnd		ifTrue: [ nil ]		ifFalse: [ aRequestContext consumer peek ].	super handle: aRequestContext!

handleFiltered: aRequestContext!

nextUnconsumedPathElement	^ nextUnconsumedPathElement! !

!WANextUnconsumedPathElementRequestHandler categoriesForMethods!
handle:!handling!public! !
handleFiltered:!handling!public! !
nextUnconsumedPathElement!accessing!public! !
!


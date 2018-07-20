"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WANextUnconsumedPathElementRequestHandler
	instanceVariableNames: 'nextUnconsumedPathElement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WANextUnconsumedPathElementRequestHandler guid: (GUID fromString: '{024bdbfc-89a1-4fda-b056-2c9656a9e0c8}')!
WANextUnconsumedPathElementRequestHandler comment: ''!
!WANextUnconsumedPathElementRequestHandler categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WANextUnconsumedPathElementRequestHandler methodsFor!

handle: aRequestContext	| consumer |	consumer := aRequestContext consumer.	nextUnconsumedPathElement := consumer atEnd		ifTrue: [ nil ]		ifFalse: [ aRequestContext consumer peek ].	super handle: aRequestContext!

handleFiltered: aRequestContext!

nextUnconsumedPathElement	^ nextUnconsumedPathElement! !
!WANextUnconsumedPathElementRequestHandler categoriesFor: #handle:!handling!public! !
!WANextUnconsumedPathElementRequestHandler categoriesFor: #handleFiltered:!handling!public! !
!WANextUnconsumedPathElementRequestHandler categoriesFor: #nextUnconsumedPathElement!accessing!public! !


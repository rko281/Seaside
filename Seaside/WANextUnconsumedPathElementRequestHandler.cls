"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WANextUnconsumedPathElementRequestHandler
	instanceVariableNames: 'nextUnconsumedPathElement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WANextUnconsumedPathElementRequestHandler guid: (GUID fromString: '{3994b0e2-7df5-4ec5-a552-2f508f70be6a}')!
WANextUnconsumedPathElementRequestHandler comment: ''!
!WANextUnconsumedPathElementRequestHandler categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WANextUnconsumedPathElementRequestHandler methodsFor!

handle: aRequestContext	| consumer |	consumer := aRequestContext consumer.	nextUnconsumedPathElement := consumer atEnd		ifTrue: [ nil ]		ifFalse: [ aRequestContext consumer peek ].	super handle: aRequestContext!

handleFiltered: aRequestContext!

nextUnconsumedPathElement	^ nextUnconsumedPathElement! !
!WANextUnconsumedPathElementRequestHandler categoriesFor: #handle:!handling!public! !
!WANextUnconsumedPathElementRequestHandler categoriesFor: #handleFiltered:!handling!public! !
!WANextUnconsumedPathElementRequestHandler categoriesFor: #nextUnconsumedPathElement!accessing!public! !


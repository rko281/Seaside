"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WANextUnconsumedPathElementRequestHandler
	instanceVariableNames: 'nextUnconsumedPathElement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WANextUnconsumedPathElementRequestHandler guid: (GUID fromString: '{49aae7e3-ff4a-4330-8483-278813b9db71}')!

WANextUnconsumedPathElementRequestHandler comment: ''!

!WANextUnconsumedPathElementRequestHandler categoriesForClass!Seaside-Tests-Core-RequestHandling! !

!WANextUnconsumedPathElementRequestHandler methodsFor!

handle: aRequestContext	| consumer |	consumer := aRequestContext consumer.	nextUnconsumedPathElement := consumer atEnd		ifTrue: [ nil ]		ifFalse: [ aRequestContext consumer peek ].	super handle: aRequestContext!

handleFiltered: aRequestContext!

nextUnconsumedPathElement	^ nextUnconsumedPathElement! !

!WANextUnconsumedPathElementRequestHandler categoriesForMethods!
handle:!handling!public! !
handleFiltered:!handling!public! !
nextUnconsumedPathElement!accessing!public! !
!


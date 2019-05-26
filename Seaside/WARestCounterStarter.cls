"Filed out from Dolphin Smalltalk 7"!

WARestfulComponentFilter subclass: #WARestCounterStarter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARestCounterStarter guid: (GUID fromString: '{3d7cd520-eef7-40cb-a5d8-ca007c07e01a}')!
WARestCounterStarter comment: 'I demonstrate how to use Seaside-REST to resume WARestCounter once a session has expired.'!
!WARestCounterStarter categoriesForClass!Seaside-REST-Examples! !
!WARestCounterStarter methodsFor!

count: count	##(Pragma get).	##(Pragma path: '/{count}').	"We could also use		WARestCounter new		initialRequest: (self requestContext request);		yourself		and implement WARestCounter >> #initialRequest:		But then we would have to 'manually' parse the request in #initialRequest:.	It's much more convenient this way."	self startSessionWithRoot: (WARestCounter new		count: count greaseInteger;		yourself)! !
!WARestCounterStarter categoriesFor: #count:!public!routes! !


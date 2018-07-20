"Filed out from Dolphin Smalltalk 7"!

SwazooSite subclass: #WAPluggableSite
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPluggableSite guid: (GUID fromString: '{5b535085-fd3e-4900-bb19-58fdfee978cf}')!
WAPluggableSite comment: ''!
!WAPluggableSite categoriesForClass!Unclassified! !
!WAPluggableSite methodsFor!

answerTo: aSwazooRequest
	^ handler process: aSwazooRequest!

helpResolve: aResolution 
	(self canAnswer and: [ aResolution siteMatch: self ]) ifFalse: [^nil].
	^self answerTo: aResolution request!

initializeWithHandler: aHandler
	handler := aHandler! !
!WAPluggableSite categoriesFor: #answerTo:!public!serving! !
!WAPluggableSite categoriesFor: #helpResolve:!public!serving-private! !
!WAPluggableSite categoriesFor: #initializeWithHandler:!initialization!public! !

!WAPluggableSite class methodsFor!

named: aString on: aHandler
	^self new
		name: aString;
		initializeWithHandler: aHandler;
		yourself! !
!WAPluggableSite class categoriesFor: #named:on:!instance creation!public! !


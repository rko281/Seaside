"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAWelcomeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcomeTest guid: (GUID fromString: '{f00b834e-8438-4574-a48e-1130e759f95f}')!
WAWelcomeTest comment: ''!
!WAWelcomeTest categoriesForClass!Seaside-Tests-Welcome! !
!WAWelcomeTest methodsFor!

cleanEnvironment	WAAdmin unregister: 'WAWelcomeTestTemp'.	Smalltalk globals at: #WAWelcomeTestTemp ifPresent: [ :testClass | testClass removeFromSystem ]!

setUp	self cleanEnvironment!

tearDown	self cleanEnvironment !

testComponentCreation	| creator |	creator := WAWelcomeComponentCreator new.	creator createComponent: #WAWelcomeTestTemp.	self assert: (Smalltalk globals includesKey: #WAWelcomeTestTemp)	!

testImplementedIsAuthorNameSet	self shouldnt: [ GRPlatform current seasideIsAuthorNameSet ] raise: Error 		! !
!WAWelcomeTest categoriesFor: #cleanEnvironment!private! !
!WAWelcomeTest categoriesFor: #setUp!public!running! !
!WAWelcomeTest categoriesFor: #tearDown!public!running! !
!WAWelcomeTest categoriesFor: #testComponentCreation!public!tests! !
!WAWelcomeTest categoriesFor: #testImplementedIsAuthorNameSet!public!tests! !


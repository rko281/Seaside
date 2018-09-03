"Filed out from Dolphin Smalltalk 7"!

WARestfulHandler subclass: #WAStubHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStubHandler guid: (GUID fromString: '{ab9e5406-5513-4d75-a7ad-28c10c622488}')!
WAStubHandler comment: ''!
!WAStubHandler categoriesForClass!Seaside-Tests-REST-Core! !
!WAStubHandler methodsFor!

createRoutes	^ OrderedCollection new		"GET"		add: (WARoute get: #listDatabases);		add: (WARoute post: #createDatabase:);		add: (WARoute post: #createDatabase:document:);		add: (WARoute get: #getDatabase:document:);		add: (WARoute delete: #deleteDatabase:document:);		yourself! !
!WAStubHandler categoriesFor: #createRoutes!private! !


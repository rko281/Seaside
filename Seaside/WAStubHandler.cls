"Filed out from Dolphin Smalltalk 7"!

WARestfulHandler subclass: #WAStubHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStubHandler guid: (GUID fromString: '{0135dc74-8448-4e8c-b07e-46cd28c25b84}')!
WAStubHandler comment: ''!
!WAStubHandler categoriesForClass!Seaside-Tests-REST-Core! !
!WAStubHandler methodsFor!

createRoutes	^ OrderedCollection new		"GET"		add: (WARoute get: #listDatabases);		add: (WARoute post: #createDatabase:);		add: (WARoute post: #createDatabase:document:);		add: (WARoute get: #getDatabase:document:);		add: (WARoute delete: #deleteDatabase:document:);		yourself! !
!WAStubHandler categoriesFor: #createRoutes!private! !


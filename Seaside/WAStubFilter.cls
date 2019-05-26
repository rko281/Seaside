"Filed out from Dolphin Smalltalk 7"!

WARestfulFilter subclass: #WAStubFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStubFilter guid: (GUID fromString: '{0993289d-4193-4e85-afb7-bb27aec9cc0c}')!
WAStubFilter comment: ''!
!WAStubFilter categoriesForClass!Seaside-Tests-REST-Core! !
!WAStubFilter methodsFor!

createRoutes	^ OrderedCollection new		"GET"		add: (WARoute get: #listDatabases);		add: (WARoute post: #createDatabase:);		add: (WARoute post: #createDatabase:document:);		add: (WARoute get: #getDatabase:document:);		add: (WARoute delete: #deleteDatabase:document:);		yourself! !
!WAStubFilter categoriesFor: #createRoutes!private! !


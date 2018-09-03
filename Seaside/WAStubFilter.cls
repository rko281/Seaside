"Filed out from Dolphin Smalltalk 7"!

WARestfulFilter subclass: #WAStubFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStubFilter guid: (GUID fromString: '{6749516d-330c-45b7-ac30-d96f27939479}')!
WAStubFilter comment: ''!
!WAStubFilter categoriesForClass!Seaside-Tests-REST-Core! !
!WAStubFilter methodsFor!

createRoutes	^ OrderedCollection new		"GET"		add: (WARoute get: #listDatabases);		add: (WARoute post: #createDatabase:);		add: (WARoute post: #createDatabase:document:);		add: (WARoute get: #getDatabase:document:);		add: (WARoute delete: #deleteDatabase:document:);		yourself! !
!WAStubFilter categoriesFor: #createRoutes!private! !


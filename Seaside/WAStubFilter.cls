"Filed out from Dolphin Smalltalk"!

WARestfulFilter subclass: #WAStubFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStubFilter guid: (GUID fromString: '{b4c81723-ee20-4da0-ac2c-974a927eb18b}')!

WAStubFilter comment: ''!

!WAStubFilter categoriesForClass!Seaside-Tests-REST-Core! !

!WAStubFilter methodsFor!

createRoutes	^ OrderedCollection new		"GET"		add: (WARoute get: #listDatabases);		add: (WARoute post: #createDatabase:);		add: (WARoute post: #createDatabase:document:);		add: (WARoute get: #getDatabase:document:);		add: (WARoute delete: #deleteDatabase:document:);		yourself! !

!WAStubFilter categoriesForMethods!
createRoutes!private! !
!


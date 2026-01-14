"Filed out from Dolphin Smalltalk"!

WARestfulHandler subclass: #WAStubHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStubHandler guid: (GUID fromString: '{a882c88c-7a9c-40ba-a4a4-ee715f987b53}')!

WAStubHandler comment: ''!

!WAStubHandler categoriesForClass!Seaside-Tests-REST-Core! !

!WAStubHandler methodsFor!

createRoutes	^ OrderedCollection new		"GET"		add: (WARoute get: #listDatabases);		add: (WARoute post: #createDatabase:);		add: (WARoute post: #createDatabase:document:);		add: (WARoute get: #getDatabase:document:);		add: (WARoute delete: #deleteDatabase:document:);		yourself! !

!WAStubHandler categoriesForMethods!
createRoutes!private! !
!


"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAPragmaBasedRestfulHandlerTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPragmaBasedRestfulHandlerTest guid: (GUID fromString: '{cb3035e8-e1eb-42e8-b92e-aedae251d976}')!
WAPragmaBasedRestfulHandlerTest comment: ''!
!WAPragmaBasedRestfulHandlerTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAPragmaBasedRestfulHandlerTest methodsFor!

setUp	handler := WAPragmaStubHandler new!

testCreateRoutes	self assert: handler notNil! !
!WAPragmaBasedRestfulHandlerTest categoriesFor: #setUp!public!running! !
!WAPragmaBasedRestfulHandlerTest categoriesFor: #testCreateRoutes!public!tests! !


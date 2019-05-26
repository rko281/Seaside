"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAPragmaBasedRestfulHandlerTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPragmaBasedRestfulHandlerTest guid: (GUID fromString: '{5e319f38-f86a-4733-b76f-e2182f297796}')!
WAPragmaBasedRestfulHandlerTest comment: ''!
!WAPragmaBasedRestfulHandlerTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAPragmaBasedRestfulHandlerTest methodsFor!

setUp	handler := WAPragmaStubHandler new!

testCreateRoutes	self assert: handler notNil! !
!WAPragmaBasedRestfulHandlerTest categoriesFor: #setUp!public!running! !
!WAPragmaBasedRestfulHandlerTest categoriesFor: #testCreateRoutes!public!tests! !


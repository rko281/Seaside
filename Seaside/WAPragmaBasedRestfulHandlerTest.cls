"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAPragmaBasedRestfulHandlerTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPragmaBasedRestfulHandlerTest guid: (GUID fromString: '{af3b9427-a584-4aff-acb5-63263fe59d8c}')!

WAPragmaBasedRestfulHandlerTest comment: ''!

!WAPragmaBasedRestfulHandlerTest categoriesForClass!Seaside-Tests-REST-Core! !

!WAPragmaBasedRestfulHandlerTest methodsFor!

setUp	handler := WAPragmaStubHandler new!

testCreateRoutes	self assert: handler notNil! !

!WAPragmaBasedRestfulHandlerTest categoriesForMethods!
setUp!public!running! !
testCreateRoutes!public!tests! !
!


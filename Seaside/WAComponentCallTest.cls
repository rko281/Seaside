"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAComponentCallTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAComponentCallTest guid: (GUID fromString: '{68836221-bed9-4f8f-a8ea-3f17291ba533}')!
WAComponentCallTest comment: ''!
!WAComponentCallTest categoriesForClass!Seaside-Tests-Flow-Unit! !
!WAComponentCallTest methodsFor!

testCallSelf	| component callback |	component := WAComponent new.	callback :=  WAActionCallback new block: [ component call: component ]; yourself.	self		should: [ 			[ callback evaluateWithArgument: nil ] on: WARenderNotification do: [ :e | nil ] ]		raise: WAError! !
!WAComponentCallTest categoriesFor: #testCallSelf!public!tests! !


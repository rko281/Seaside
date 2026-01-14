"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAComponentCallTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAComponentCallTest guid: (GUID fromString: '{d37beceb-dfa6-499e-9fcf-bde336ab2314}')!

WAComponentCallTest comment: ''!

!WAComponentCallTest categoriesForClass!Seaside-Tests-Flow-Unit! !

!WAComponentCallTest methodsFor!

testCallSelf	| component callback |	component := WAComponent new.	callback :=  WAActionCallback new block: [ component call: component ]; yourself.	self		should: [ 			[ callback evaluateWithArgument: nil ] on: WARenderNotification do: [ :e | nil ] ]		raise: WAError! !

!WAComponentCallTest categoriesForMethods!
testCallSelf!public!tests! !
!


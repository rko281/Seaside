"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAComponentCallTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAComponentCallTest guid: (GUID fromString: '{33604681-8850-415f-bf31-44d709e5a505}')!

WAComponentCallTest comment: ''!

!WAComponentCallTest categoriesForClass!Unit! !

!WAComponentCallTest methodsFor!

testCallSelf	| component callback |	component := WAComponent new.	callback :=  WAActionCallback new block: [ component call: component ]; yourself.	self		should: [ 			[ callback evaluateWithArgument: nil ] on: WARenderNotification do: [ :e | nil ] ]		raise: WAError! !

!WAComponentCallTest categoriesForMethods!
testCallSelf!public!tests! !
!


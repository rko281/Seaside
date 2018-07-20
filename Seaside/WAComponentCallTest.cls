"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAComponentCallTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAComponentCallTest guid: (GUID fromString: '{e5dd88f1-3697-404c-aed6-16a8288b9798}')!
WAComponentCallTest comment: ''!
!WAComponentCallTest categoriesForClass!Seaside-Tests-Flow-Unit! !
!WAComponentCallTest methodsFor!

testCallSelf	| component callback |	component := WAComponent new.	callback :=  WAActionCallback new block: [ component call: component ]; yourself.	self		should: [ 			[ callback evaluateWithArgument: nil ] on: WARenderNotification do: [ :e | nil ] ]		raise: WAError! !
!WAComponentCallTest categoriesFor: #testCallSelf!public!tests! !


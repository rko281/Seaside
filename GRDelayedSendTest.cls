"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #GRDelayedSendTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDelayedSendTest guid: (GUID fromString: '{8a869478-16d9-481d-a652-ee7d2952bcc0}')!
GRDelayedSendTest comment: ''!
!GRDelayedSendTest categoriesForClass!Grease-Tests-Core! !
!GRDelayedSendTest methodsFor!

testArgumentCount	" unary "	| send |	send := GRDelayedSend 		receiver: 1		selector: #negated.	self assert: send argumentCount = 0.	send := GRDelayedSend 		receiver: 1		selector: #negated		arguments: #().	self assert: send argumentCount = 0.	" binary "	send := GRDelayedSend 		receiver: 1		selector: #+.	self assert: send argumentCount = 1.	send := GRDelayedSend 		receiver: 1		selector: #+		argument: 2.	self assert: send argumentCount = 0.	" keyword "	send := GRDelayedSend 		receiver: 1		selector: #between:and:.	self assert: send argumentCount = 2.	send := GRDelayedSend 		receiver: 1		selector: #between:and:		argument: 2.	self assert: send argumentCount = 1.	send := GRDelayedSend 		receiver: 1		selector: #between:and:		arguments: (Array 				with: 2				with: 3).	self assert: send argumentCount = 0!

testFixCallbackTemps	| send |	send := GRDelayedSend 		receiver: 1		selector: #+.	self assert: send fixCallbackTemps == send.	send := GRDelayedSend 		receiver: 1		selector: #+		argument: 2.	self assert: send fixCallbackTemps == send!

testValueBinary	| send |	send := GRDelayedSend 		receiver: 1		selector: #+.	self 		should: [ send value ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #+		argument: 2.	self assert: send value = 3!

testValueKeyword	| send |	send := GRDelayedSend 		receiver: 1		selector: #between:and:.	self 		should: [ send value ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #between:and:		argument: 2.	self 		should: [ send value ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #between:and:		arguments: (Array 				with: 2				with: 3).	self deny: send value!

testValueUnary	| send |	send := GRDelayedSend 		receiver: 1		selector: #negated.	self assert: send value = -1.	send := GRDelayedSend 		receiver: 1		selector: #negated		arguments: #().	self assert: send value = -1!

testValueValueBinary	| send |	send := GRDelayedSend 		receiver: 1		selector: #+.	self 		should: 			[ send 				value: 2				value: 3 ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #+		argument: 2.	self 		should: 			[ send 				value: 2				value: 3 ]		raise: GRInvalidArgumentCount!

testValueValueKeyword	| send |	send := GRDelayedSend 		receiver: 1		selector: #between:and:.	self deny: (send 			value: 2			value: 3).	send := GRDelayedSend 		receiver: 1		selector: #between:and:		argument: 2.	self 		should: 			[ send 				value: 4				value: 5 ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #between:and:		arguments: (Array 				with: 2				with: 3).	self 		should: 			[ send 				value: 4				value: 5 ]		raise: GRInvalidArgumentCount!

testValueValueUnary	| send |	send := GRDelayedSend 		receiver: 1		selector: #negated.	self 		should: 			[ send 				value: 2				value: 3 ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #negated		arguments: #().	self 		should: 			[ send 				value: 2				value: 3 ]		raise: GRInvalidArgumentCount!

testValueWithArgumentBinary	| send |	send := GRDelayedSend 		receiver: 1		selector: #+.	self assert: (send value: 2) = 3.	send := GRDelayedSend 		receiver: 1		selector: #+		argument: 2.	self 		should: [ send value: 2 ]		raise: GRInvalidArgumentCount!

testValueWithArgumentKeyword	| send |	send := GRDelayedSend 		receiver: 1		selector: #between:and:.	self 		should: [ send value: 2 ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #between:and:		argument: 2.	self deny: (send value: 3).	send := GRDelayedSend 		receiver: 1		selector: #between:and:		arguments: #(2 3 ).	self 		should: [ send value: 4 ]		raise: GRInvalidArgumentCount!

testValueWithArgumentsBinary	| send |	send := GRDelayedSend 		receiver: 1		selector: #+.	self 		should: [ send valueWithArguments: #(2 3 ) ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #+		argument: 2.	self 		should: [ send valueWithArguments: #(3 4 ) ]		raise: GRInvalidArgumentCount!

testValueWithArgumentsKeyword	| send |	send := GRDelayedSend 		receiver: 1		selector: #between:and:.	self deny: (send valueWithArguments: #(2 3 )).	send := GRDelayedSend 		receiver: 1		selector: #between:and:		argument: 2.	self 		should: [ send valueWithArguments: #(3 4 ) ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #between:and:		arguments: #(2 3 ).	self 		should: [ send valueWithArguments: #(4 5 ) ]		raise: GRInvalidArgumentCount!

testValueWithArgumentsUnary	| send |	send := GRDelayedSend 		receiver: 1		selector: #negated.	self 		should: [ send valueWithArguments: #(2 3 ) ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #negated		arguments: #().	self 		should: [ send valueWithArguments: #(2 3 ) ]		raise: GRInvalidArgumentCount!

testValueWithArgumentUnary	| send |	send := GRDelayedSend 		receiver: 1		selector: #negated.	self 		should: [ send value: 2 ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #negated		arguments: #().	self 		should: [ send value: 2 ]		raise: GRInvalidArgumentCount!

testValueWithPossibleArgumentsBinary	| send |	send := GRDelayedSend 		receiver: 1		selector: #+.	self 		should: [ send valueWithPossibleArguments: #() ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #+		argument: 2.	self assert: (send valueWithPossibleArguments: #()) = 3.	send := GRDelayedSend 		receiver: 1		selector: #+.	self assert: (send valueWithPossibleArguments: #(2 )) = 3.	send := GRDelayedSend 		receiver: 1		selector: #+		argument: 2.	self assert: (send valueWithPossibleArguments: #(3 )) = 3.	send := GRDelayedSend 		receiver: 1		selector: #+.	self assert: (send valueWithPossibleArguments: #(2 3 )) = 3.	send := GRDelayedSend 		receiver: 1		selector: #+		argument: 2.	self assert: (send valueWithPossibleArguments: #(3 4 )) = 3!

testValueWithPossibleArgumentsKeyword	| send |	send := GRDelayedSend 		receiver: 1		selector: #between:and:.	self 		should: [ send valueWithPossibleArguments: #() ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #between:and:		argument: 2.	self 		should: [ send valueWithPossibleArguments: #() ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #between:and:		arguments: (Array 				with: 2				with: 3).	self deny: (send valueWithPossibleArguments: #()).	send := GRDelayedSend 		receiver: 1		selector: #between:and:.	self 		should: [ send valueWithPossibleArguments: #(2 ) ]		raise: GRInvalidArgumentCount.	send := GRDelayedSend 		receiver: 1		selector: #between:and:		argument: 2.	self deny: (send valueWithPossibleArguments: #(3 )).	send := GRDelayedSend 		receiver: 1		selector: #between:and:		arguments: (Array 				with: 2				with: 3).	self deny: (send valueWithPossibleArguments: #(4 )).	send := GRDelayedSend 		receiver: 1		selector: #between:and:.	self deny: (send valueWithPossibleArguments: #(2 3 )).	send := GRDelayedSend 		receiver: 1		selector: #between:and:		argument: 2.	self deny: (send valueWithPossibleArguments: #(3 4 )).	send := GRDelayedSend 		receiver: 1		selector: #between:and:		arguments: (Array 				with: 2				with: 3).	self deny: (send valueWithPossibleArguments: #(4 5 ))!

testValueWithPossibleArgumentsUnary	| send |	send := GRDelayedSend 		receiver: 1		selector: #negated.	self assert: (send valueWithPossibleArguments: #()) = -1.	send := GRDelayedSend 		receiver: 1		selector: #negated		arguments: #().	self assert: (send valueWithPossibleArguments: #()) = -1.	send := GRDelayedSend 		receiver: 1		selector: #negated.	self assert: (send valueWithPossibleArguments: #(2 )) = -1.	send := GRDelayedSend 		receiver: 1		selector: #negated		arguments: #().	self assert: (send valueWithPossibleArguments: #(2 )) = -1.	send := GRDelayedSend 		receiver: 1		selector: #negated.	self assert: (send valueWithPossibleArguments: #(2 3 )) = -1.	send := GRDelayedSend 		receiver: 1		selector: #negated		arguments: #().	self assert: (send valueWithPossibleArguments: #(2 3 )) = -1! !
!GRDelayedSendTest categoriesFor: #testArgumentCount!public!tests/accessing! !
!GRDelayedSendTest categoriesFor: #testFixCallbackTemps!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueBinary!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueKeyword!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueUnary!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueValueBinary!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueValueKeyword!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueValueUnary!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueWithArgumentBinary!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueWithArgumentKeyword!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueWithArgumentsBinary!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueWithArgumentsKeyword!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueWithArgumentsUnary!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueWithArgumentUnary!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueWithPossibleArgumentsBinary!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueWithPossibleArgumentsKeyword!public!tests/evaluating! !
!GRDelayedSendTest categoriesFor: #testValueWithPossibleArgumentsUnary!public!tests/evaluating! !


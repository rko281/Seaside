"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAPathConsumerTest
	instanceVariableNames: 'consumer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPathConsumerTest guid: (GUID fromString: '{2665254b-bb49-4b5d-a0b6-c7f69ee89e60}')!

WAPathConsumerTest comment: ''!

!WAPathConsumerTest categoriesForClass!RequestHandling! !

!WAPathConsumerTest methodsFor!

setUp	super setUp.	consumer := WAPathConsumer path: #('tweets' 'kentbeck') asOrderedCollection!

testAtEnd	self deny: consumer atEnd.	consumer next.	self deny: consumer atEnd.	consumer next.	self assert: consumer atEnd!

testNext	self assert: consumer next = 'tweets'.	self assert: consumer next = 'kentbeck'.	self should: [ consumer next ] raise: Error!

testNextIfPresent	| evaluated |	evaluated := false.	consumer nextIfPresentDo: [ :next |		 self assert: next = 'tweets'.		evaluated := true ].	self assert: evaluated.		evaluated := false.	consumer nextIfPresentDo: [ :next |		 self assert: next = 'kentbeck'.		evaluated := true ].	self assert: evaluated.		evaluated := false.	consumer nextIfPresentDo: [ :next |		evaluated := true ].	self deny: evaluated!

testPeek	self assert: consumer peek = 'tweets'.	self assert: consumer peek = 'tweets'.	consumer next.	self assert: consumer peek = 'kentbeck'.	self assert: consumer peek = 'kentbeck'.	consumer next.	self should: [ consumer peek ] raise: Error!

testPeekToEnd	| result |	result := Array with: 'tweets' with: 'kentbeck'.	self assert: consumer peekToEnd = result.	self deny: consumer atEnd.	self assert: consumer next = 'tweets'.	self assert: consumer next = 'kentbeck'.	self assert: consumer atEnd!

testTry	self deny: (consumer try: 'foo').	self assert: (consumer try: 'tweets').	self deny: (consumer try: 'tweets').	self assert: (consumer try: 'kentbeck').	self assert: consumer atEnd.	self deny: (consumer try: 'kentbeck')!

testUpToEnd	| result |	result := OrderedCollection new add: 'tweets' ; add: 'kentbeck'; yourself.	self assert: consumer upToEnd = result.	self assert: consumer atEnd! !

!WAPathConsumerTest categoriesForMethods!
setUp!public!running! !
testAtEnd!public!tests! !
testNext!public!tests! !
testNextIfPresent!public!tests! !
testPeek!public!tests! !
testPeekToEnd!public!tests! !
testTry!public!tests! !
testUpToEnd!public!tests! !
!


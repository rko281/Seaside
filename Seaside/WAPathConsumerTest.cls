"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAPathConsumerTest
	instanceVariableNames: 'consumer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPathConsumerTest guid: (GUID fromString: '{8532b8b2-4474-4f97-820f-bbe217743c0d}')!
WAPathConsumerTest comment: ''!
!WAPathConsumerTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WAPathConsumerTest methodsFor!

setUp	super setUp.	consumer := WAPathConsumer path: #('tweets' 'kentbeck') asOrderedCollection!

testAtEnd	self deny: consumer atEnd.	consumer next.	self deny: consumer atEnd.	consumer next.	self assert: consumer atEnd!

testNext	self assert: consumer next = 'tweets'.	self assert: consumer next = 'kentbeck'.	self should: [ consumer next ] raise: Error!

testNextIfPresent	| evaluated |	evaluated := false.	consumer nextIfPresentDo: [ :next |		 self assert: next = 'tweets'.		evaluated := true ].	self assert: evaluated.		evaluated := false.	consumer nextIfPresentDo: [ :next |		 self assert: next = 'kentbeck'.		evaluated := true ].	self assert: evaluated.		evaluated := false.	consumer nextIfPresentDo: [ :next |		evaluated := true ].	self deny: evaluated!

testPeek	self assert: consumer peek = 'tweets'.	self assert: consumer peek = 'tweets'.	consumer next.	self assert: consumer peek = 'kentbeck'.	self assert: consumer peek = 'kentbeck'.	consumer next.	self should: [ consumer peek ] raise: Error!

testPeekToEnd	| result |	result := Array with: 'tweets' with: 'kentbeck'.	self assert: consumer peekToEnd = result.	self deny: consumer atEnd.	self assert: consumer next = 'tweets'.	self assert: consumer next = 'kentbeck'.	self assert: consumer atEnd!

testTry	self deny: (consumer try: 'foo').	self assert: (consumer try: 'tweets').	self deny: (consumer try: 'tweets').	self assert: (consumer try: 'kentbeck').	self assert: consumer atEnd.	self deny: (consumer try: 'kentbeck')	!

testUpToEnd	| result |	result := OrderedCollection new add: 'tweets' ; add: 'kentbeck'; yourself.	self assert: consumer upToEnd = result.	self assert: consumer atEnd! !
!WAPathConsumerTest categoriesFor: #setUp!public!running! !
!WAPathConsumerTest categoriesFor: #testAtEnd!public!tests! !
!WAPathConsumerTest categoriesFor: #testNext!public!tests! !
!WAPathConsumerTest categoriesFor: #testNextIfPresent!public!tests! !
!WAPathConsumerTest categoriesFor: #testPeek!public!tests! !
!WAPathConsumerTest categoriesFor: #testPeekToEnd!public!tests! !
!WAPathConsumerTest categoriesFor: #testTry!public!tests! !
!WAPathConsumerTest categoriesFor: #testUpToEnd!public!tests! !


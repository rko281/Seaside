"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SwazooSocketTest
	instanceVariableNames: 'input output'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooSocketTest guid: (GUID fromString: '{de016290-ceb6-4a56-8d36-de88de4b5dd3}')!
SwazooSocketTest comment: ''!
!SwazooSocketTest categoriesForClass!Unclassified! !
!SwazooSocketTest methodsFor!

setUp
	| pair |
	pair := SwazooSocket connectedPair.
	input := pair first.
	output := pair last!

tearDown
	input close.
	output close!

testConnectedPair
	(Array with: input with: output) 
		do: [:each | self assert: (each isKindOf: SwazooSocket)]!

testNetworkConnection
	| server sem |
	input close.
	output close.
	sem := Semaphore new.
	
	[server := SwazooSocket serverOnIP: '127.0.0.1' port: 65423.
	server listenFor: 50.
	
	[input := server accept.
	sem signal] fork.
	output := SwazooSocket connectTo: 'localhost' port: 65423.
	sem wait.
	self testReadWrite] 
			ensure: [server close]!

testPartialRead
	| bytes |
	bytes := ByteArray withAll: #(5 4 3).
	self assert: (input write: bytes) = 3.
	self assert: (output read: 5) = bytes!

testReadTimeout
	"on Squeak doesn't come back, and also we don't need it for now !!"
"	input write: (ByteArray withAll: #(1 2 3)).
	self assert: (output read: 3 timeout: 40) = (ByteArray withAll: #(1 2 3)).
	self assert: (output read: 3 timeout: 40) = ByteArray new
"!

testReadWrite
	| bytes |
	bytes := ByteArray withAll: #(1 2 3 4 5).
	self assert: (input write: bytes) = 5.
	self assert: (output read: 5) = bytes.
	bytes := ByteArray with: 4.
	self assert: (input write: bytes) = 1.
	self assert: (output read: 1) = bytes! !
!SwazooSocketTest categoriesFor: #setUp!public!running! !
!SwazooSocketTest categoriesFor: #tearDown!public!running! !
!SwazooSocketTest categoriesFor: #testConnectedPair!public!testing! !
!SwazooSocketTest categoriesFor: #testNetworkConnection!public!testing! !
!SwazooSocketTest categoriesFor: #testPartialRead!public!testing! !
!SwazooSocketTest categoriesFor: #testReadTimeout!public!testing! !
!SwazooSocketTest categoriesFor: #testReadWrite!public!testing! !


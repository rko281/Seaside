"Filed out from Dolphin Smalltalk 7"!

SpTestCase subclass: #SpSocketTest
	instanceVariableNames: 'socket serverSocket newSpServerSocket semaphore acceptProcess'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpSocketTest guid: (GUID fromString: '{d4674497-6462-4082-aa77-8313c4ae1252}')!
SpSocketTest comment: ''!
!SpSocketTest categoriesForClass!Unclassified! !
!SpSocketTest methodsFor!

execute: aBlock timeOutMilliseconds: anInteger 
	"Private - Executes aBlock or terminates it and raise an error if its evaluation takes longer than anInteger seconds."

	| proc |
	proc := aBlock newProcess.
	[(Delay forMilliseconds: anInteger) wait.
		(proc notNil and: [proc isAlive]) ifTrue: [
			self halt.
			"proc terminate."
			self signalFailure: 'Execution timeout reached.'
		]
	] fork.
	proc resume!

tearDown
	socket notNil ifTrue: [socket close].
	serverSocket notNil ifTrue: [socket close].
	newSpServerSocket notNil ifTrue: [newSpServerSocket close].
	acceptProcess ifNotNil: [acceptProcess terminate].
	socket := serverSocket := newSpServerSocket := nil!

testBasicInstantiation
	self should: [(socket := SpSocket newTCPClientSocket) notNil].
	self should: [(socket := SpSocket newTCPServerSocket) notNil]!

testConnectionAndClose
	
	serverSocket := ServerSocket2 port: 9999.
	socket := SpSocket connectToServerOnHost: 'localhost' port: 9999.
	self assert: socket isActive.
	socket close.
	self deny: socket isActive.
	serverSocket close.
	!

testConnectionToHostAndPort
	
	serverSocket := ServerSocket2 port: 9999.
	socket := SpSocket connectToServerOnHost: 'localhost' port: 9999.
	self assert: socket isActive!

testGetPeerAddress
	
	| pair |
	pair := SpSocket newSocketPair.
	serverSocket := pair first. 
	socket := pair last.
	!

testSocketConnectionAccept
	
	semaphore := Semaphore new.
	serverSocket := SpSocket port: 9999.
	acceptProcess := [newSpServerSocket := serverSocket accept. semaphore signal ] fork.
	socket := SpSocket connectToServerOnHost: 'localhost' port: 9999.
	semaphore wait.
	self assert: newSpServerSocket notNil.
	self assert: newSpServerSocket isActive
	!

testSocketPair
	
	| pair |
	pair := SpSocket newSocketPair.
	serverSocket := pair first. 
	socket := pair last.
	pair do: [:each |
		self 
			assert: (each isKindOf: SpSocket);
			assert: each isActive
			]
	
	!

testSocketSendAndReceive
	
	| bytes |
	serverSocket := SpSocket port: 9999.
	semaphore := Semaphore new.
	acceptProcess := [newSpServerSocket := serverSocket accept. semaphore signal] fork.
	socket := SpSocket connectToServerOnHost: 'localhost' port: 9999.
	semaphore wait.
	socket write: 'Hello portable world!!'.
	self assert: newSpServerSocket readyForRead.
	self assert: (newSpServerSocket  read: 5) asString = 'Hello'.
	self assert: (newSpServerSocket  readInto: (bytes := ByteArray new: 15)  startingAt: 1 for: 15) = ' portable world' size.
	self assert: (bytes copyFrom: 1 to: ' portable world' size) asString = ' portable world'.
	self assert: newSpServerSocket  readyForRead	!

testTCPServerSocketInstantiation
	
	serverSocket := SpSocket port: 9999.
	socket := SpSocket connectToServerOnHost: 'localhost' port: 9999.
	self assert: socket isActive.
	socket close.
	self deny: socket isActive.
	serverSocket close.
	!

waitAMoment
	"Private - Suspends the current process by a moment. "

	(Delay forMilliseconds: 400) wait! !
!SpSocketTest categoriesFor: #execute:timeOutMilliseconds:!public! !
!SpSocketTest categoriesFor: #tearDown!private! !
!SpSocketTest categoriesFor: #testBasicInstantiation!public! !
!SpSocketTest categoriesFor: #testConnectionAndClose!public! !
!SpSocketTest categoriesFor: #testConnectionToHostAndPort!public! !
!SpSocketTest categoriesFor: #testGetPeerAddress!public! !
!SpSocketTest categoriesFor: #testSocketConnectionAccept!public! !
!SpSocketTest categoriesFor: #testSocketPair!public! !
!SpSocketTest categoriesFor: #testSocketSendAndReceive!public! !
!SpSocketTest categoriesFor: #testTCPServerSocketInstantiation!public! !
!SpSocketTest categoriesFor: #waitAMoment!private! !


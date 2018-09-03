"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #HTTPServerTest
	instanceVariableNames: 'server stream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPServerTest guid: (GUID fromString: '{381fb71e-7d37-46fe-9f86-62a00d5116af}')!
HTTPServerTest comment: ''!
!HTTPServerTest categoriesForClass!Unclassified! !
!HTTPServerTest methodsFor!

setUp
	| socket |
	(Delay forMilliseconds: 100) wait.
	server := HTTPServer new.
	[server ip: 'localhost'; port: 8123.
	server start]
		fork.
	(Delay forMilliseconds: 100) wait.
" 	stream := (SocketAccessor newTCPclientToHost: 'localhost' port: 8123) 
				readAppendStream"
	socket := SpSocket connectToServerOnHost:  'localhost' port: 8123.
	stream := SwazooStream socket: socket !

tearDown
	server stop.
	stream close.
	stream := nil.
	Delay forMilliseconds: 500.
!

testServing
	self assert: server isServing!

testStopServing
	server stop.
	self deny: server isServing! !
!HTTPServerTest categoriesFor: #setUp!public!running! !
!HTTPServerTest categoriesFor: #tearDown!public!running! !
!HTTPServerTest categoriesFor: #testServing!public!tests! !
!HTTPServerTest categoriesFor: #testStopServing!public!tests! !


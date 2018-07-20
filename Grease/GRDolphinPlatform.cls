"Filed out from Dolphin Smalltalk 7"!

GRPlatform subclass: #GRDolphinPlatform
	instanceVariableNames: ''
	classVariableNames: 'SmtpServer UrlTable XmlTable'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDolphinPlatform guid: (GUID fromString: '{1edc8b9c-2d1c-494f-b8b3-e4ec6f548bac}')!
GRDolphinPlatform comment: ''!
!GRDolphinPlatform categoriesForClass!Unclassified! !
!GRDolphinPlatform methodsFor!

addToShutDownList: anObject
	"Add anObject to the shutdown-list of the system. On shutdown the message #shutDown will be sent to anObject."

	SessionManager current
		when: #sessionStopped
			send: #shutDown
			to: anObject!

addToStartUpList: anObject
	"Add anObject to the startup-list of the system. On startup the message #startUp will be sent to anObject."

	SessionManager current
		when: #sessionStarted
			send: #startUp
			to: anObject!

asMethodReturningByteArray: aByteArrayOrString named: aSymbol
	"Generates the source of a method named aSymbol that returns aByteArrayOrString as a ByteArray"
	^self useByteArrayLiterals
		ifTrue: [ self asMethodReturningByteArrayLiteral: aByteArrayOrString named: aSymbol ]
		ifFalse: [ self asMethodReturningByteArrayWithCache: aByteArrayOrString named: aSymbol ]!

asMethodReturningByteArrayLiteral: aByteArrayOrString named: aSymbol
	"Generates the source of a method named aSymbol that returns aByteArrayOrString as a byte array using VW/NewCompiler byte array literal syntax."
	^String streamContents: [ :stream |
		stream nextPutAll: aSymbol; nextPut: Character cr.
		stream tab; nextPutAll: '^ #['.
		aByteArrayOrString asByteArray
			do: [ :each | each printOn: stream ]
			separatedBy: [ stream space ].
		stream nextPutAll: ']' ]!

asMethodReturningByteArrayWithCache: aByteArrayOrString named: aSymbol
	"Generates the source of a method named aSymbol that returns aByteArrayOrString as a byte array and caching this array in a literal array of size 1."
	^ String streamContents: [ :stream |
		stream nextPutAll: aSymbol; nextPut: Character cr.
		stream tab; nextPutAll: '^ #('.
		aByteArrayOrString asByteArray
			do: [ :each | each printOn: stream ]
			separatedBy: [ stream space ].
		stream nextPutAll: ') asByteArray' ]!

base64Decode: aString

	"Added asString to be compatible with Pharo: 
		(Base64MimeConverter mimeDecodeToChars: aString readStream) contents "

	^(ByteArray fromBase64String: aString) asString!

categoryNamed: aString
	"Private - Answer the MethodCategory named aString."

	^(Smalltalk at: #MethodCategory) name: aString!

compile: aString into: aClass classified: aSymbol
	"The trick here is to be as silently a possible so that the package is not marked dirty when running WAFileLibrary test.
	This also makes running tests much faster."
	
	| compileBlock dirty |
	compileBlock := [[aClass
					compile: aString
					categories: (Array with: (self categoryNamed: aSymbol asString))] on: MethodCompileFailed do: [:ex | GRError signal: 'syntax error' with: ex]].
	dirty := SessionManager isRuntime ifFalse: [aClass owningPackage ifNotNil: [:pac | pac isChanged]].
	[(Smalltalk at: #StsManager ifAbsent: [])
		ifNil: [compileBlock value]
		ifNotNil: [:sts | sts current ignoreCompilerWhile: compileBlock]]
			ensure: [SessionManager isRuntime ifFalse: [aClass owningPackage ifNotNil: [:pac | pac isChanged: dirty]]]!

contentsOfFile: aString binary: aBoolean
	| stream |
	stream := FileStream read: aString text: aBoolean not.
	^[stream contents] ensure: [stream close]!

convertToSmalltalkNewlines: aString
	"Convert any line endings (CR, CRLF, LF) to CR."

	"Dolphin version: Dolphin expects always CRLF.
	We assume that the actual senders of this message
	would expect CRLF for the Windows Dolphin Smalltalk."

	^aString ifNotNil: [aString withNormalizedLineDelimiters]!

deliverMailFrom: fromAddress to: recipientList text: messageText

	CDOIMessage new
		from: fromAddress;
		sender: fromAddress;
		to: recipientList;
		textBody: messageText;
		configuration: self smtpConfiguration;
		Send!

ensureExistenceOfFolder: aString
	"creates a folder named aString in the image directory"
	File createDirectory: (FileLocator imageRelative localFileSpecFor: aString)!

filesIn: aPathString
	"Return a collection of absolute paths for all the files (no directories) in the directory given by aPathString
	must not include file names that start with ."
	| directory fileNames |
	directory := FileLocator imageRelative localFileSpecFor: aPathString.
	fileNames := OrderedCollection new.
	File for: '*.*' in: directory do: [:each |  (each isDirectory not and: [each fileName first ~= $. ]) ifTrue: [fileNames add: each path]].
	^fileNames!

findFirstInString: aString inSet: inclusionMap startingAt: start 
	"Private - Port of Pharo primitive.
	Which is the Dolphin implementation if there is one??"

	| i stringSize |
	inclusionMap size ~= 256 ifTrue: [^0].
	i := start.
	stringSize := aString size.
	[i <= stringSize and: [(inclusionMap at: (aString at: i) asciiValue + 1) = 0]] 
		whileTrue: [i := i + 1].
	i > stringSize ifTrue: [^0].
	^i!

includesUnsafeUrlCharacter: aString 
	^aString isWideString 
		or: [(self 
				findFirstInString: aString
				inSet: UrlTable
				startingAt: 1) ~= 0]!

includesUnsafeXmlCharacter: aString 
	^self isWideString
		or: [(self 
				findFirstInString: aString
				inSet: XmlTable
				startingAt: 1) ~= 0]!

isProcessTerminated: aProcess
	"Return a boolean indicating whether aProcess has been terminated."
	^ aProcess isTerminated!

label
	^'Dolphin'!

localNameOf: aFilename
	^File splitFilenameFrom: aFilename!

newline
	^String lineDelimiter!

newRandom
	"Answers the random number generator to be used to create session and continuation keys. Make sure it is seeded. They only method that will be sent to it will be #nextInt: which should answer a random integer in the interval [1, anInteger]. Make sure this works in a load balanced scenario.
	
	Used by Gemstone/S traditional Randoms which cannot be persisted.
	Used by Squeak to use a secure random when avaiable."
	
	^Random new!

openDebuggerOn: anError
	
	^SessionManager current onUnhandledError: anError!

pathSeparator

	^File pathDelimiter asString!

readWriteByteStream
	"ByteArray based read write stream"
	
	^ ReadWriteStream on: (ByteArray new: 4096)!

readWriteCharacterStream
	"String based read write stream"

	^ ReadWriteStream on: (String new: 4096)!

reducedConflictDictionary
	"used by Gemstone/S reduced conflict classes that can be used to avoid transaction conflicts"
	^LookupTable!

removeFromShutDownList: anObject
	"Remove anObject from the shutdown list in the system."

	"Dolphin version: This is not totally correct. We should modify
	this behavior to remove only from the shutDown list of the session."
	#toDo.
	SessionManager current events removeEventsTriggeredFor: anObject!

removeFromStartUpList: anObject
	"Remove anObject from the startup list in the system."

	"Dolphin version: This is not totally correct. We should modify
	this behavior to remove only from the startUp list of the session."
	#toDo.
	SessionManager current events removeEventsTriggeredFor: anObject!

removeSelector: aSymbol from: aClass
	
	| dirty actionBlock |
	dirty := SessionManager isRuntime ifFalse: [aClass owningPackage isChanged].
	actionBlock := [aClass removeSelector:aSymbol ifAbsent: []].
	[(Smalltalk at: #StsManager ifAbsent: [])
		ifNil: [actionBlock value]
		ifNotNil: [:sts | sts current ignoreCompilerWhile: actionBlock]]
			ensure: [SessionManager isRuntime ifFalse: [aClass owningPackage isChanged: dirty]]!

secureHashFor: aString
	^ SecureHashAlgorithm new hashMessage: aString!

semaphoreClass
	"used by Gemstone/S traditional Semaphores which cannot be persisted"
	^Semaphore!

smtpConfiguration

	| config |
	config := CDOIConfiguration new.
	config fields
		at: 'http://schemas.microsoft.com/cdo/configuration/smtpserver' 
			put: self smtpServer;
		at: 'http://schemas.microsoft.com/cdo/configuration/sendusing' 
			put: 2;
		at: 'http://schemas.microsoft.com/cdo/configuration/smtpauthenticate' 
			put: 0;
		interface Update.
	^config!

smtpServer
	^self class smtpServer!

stackDepth

	| depth current |
	depth := 0.
	current := Processor activeProcess topFrame.
	[current isNil] whileFalse: [
		current := current sender.
		depth := depth + 1].
	^depth - 1!

terminateProcess: aProcess
	"Permanently terminate the process, unwinding first to execute #ensure: and #ifCurtailed: blocks."
	aProcess terminate!

useByteArrayLiterals
	"whether ByteArray literals can/should be used"
	
	^true!

weakDictionaryOfSize: aNumber
	
	^WeakLookupTable new: aNumber!

write: aStringOrByteArray toFile: aFileNameString inFolder: aFolderString
	"Writes aStringOrByteArray to a file named aFilenameString in the folder aFolderString"
	| folder stream fullFilePath |
	folder := FileLocator imageRelative localFileSpecFor: aFolderString.
	fullFilePath := File fullPathOf: aFileNameString relativeTo: folder.
	stream := FileStream write: fullFilePath text: aStringOrByteArray isString.
	[stream nextPutAll: aStringOrByteArray] ensure: [stream close]! !
!GRDolphinPlatform categoriesFor: #addToShutDownList:!public!startup! !
!GRDolphinPlatform categoriesFor: #addToStartUpList:!public!startup! !
!GRDolphinPlatform categoriesFor: #asMethodReturningByteArray:named:!file library!public! !
!GRDolphinPlatform categoriesFor: #asMethodReturningByteArrayLiteral:named:!private-file library!public! !
!GRDolphinPlatform categoriesFor: #asMethodReturningByteArrayWithCache:named:!private-file library!public! !
!GRDolphinPlatform categoriesFor: #base64Decode:!encoding!public! !
!GRDolphinPlatform categoriesFor: #categoryNamed:!file library!public! !
!GRDolphinPlatform categoriesFor: #compile:into:classified:!file library!public! !
!GRDolphinPlatform categoriesFor: #contentsOfFile:binary:!file library!public! !
!GRDolphinPlatform categoriesFor: #convertToSmalltalkNewlines:!file library!public! !
!GRDolphinPlatform categoriesFor: #deliverMailFrom:to:text:!email!public! !
!GRDolphinPlatform categoriesFor: #ensureExistenceOfFolder:!file library!public! !
!GRDolphinPlatform categoriesFor: #filesIn:!file library!public! !
!GRDolphinPlatform categoriesFor: #findFirstInString:inSet:startingAt:!private!testing! !
!GRDolphinPlatform categoriesFor: #includesUnsafeUrlCharacter:!public!testing! !
!GRDolphinPlatform categoriesFor: #includesUnsafeXmlCharacter:!public!testing! !
!GRDolphinPlatform categoriesFor: #isProcessTerminated:!processes!public! !
!GRDolphinPlatform categoriesFor: #label!public! !
!GRDolphinPlatform categoriesFor: #localNameOf:!file library!public! !
!GRDolphinPlatform categoriesFor: #newline!public! !
!GRDolphinPlatform categoriesFor: #newRandom!factory!public! !
!GRDolphinPlatform categoriesFor: #openDebuggerOn:!exceptions!public! !
!GRDolphinPlatform categoriesFor: #pathSeparator!file library!public! !
!GRDolphinPlatform categoriesFor: #readWriteByteStream!factory!public! !
!GRDolphinPlatform categoriesFor: #readWriteCharacterStream!factory!public! !
!GRDolphinPlatform categoriesFor: #reducedConflictDictionary!public! !
!GRDolphinPlatform categoriesFor: #removeFromShutDownList:!public!startup! !
!GRDolphinPlatform categoriesFor: #removeFromStartUpList:!public!startup! !
!GRDolphinPlatform categoriesFor: #removeSelector:from:!file library!public! !
!GRDolphinPlatform categoriesFor: #secureHashFor:!cryptography!public! !
!GRDolphinPlatform categoriesFor: #semaphoreClass!factory!public! !
!GRDolphinPlatform categoriesFor: #smtpConfiguration!email!public! !
!GRDolphinPlatform categoriesFor: #smtpServer!private-email!public! !
!GRDolphinPlatform categoriesFor: #stackDepth!exceptions!public! !
!GRDolphinPlatform categoriesFor: #terminateProcess:!processes!public! !
!GRDolphinPlatform categoriesFor: #useByteArrayLiterals!private-file library!public! !
!GRDolphinPlatform categoriesFor: #weakDictionaryOfSize:!factory!public! !
!GRDolphinPlatform categoriesFor: #write:toFile:inFolder:!file library!public! !

!GRDolphinPlatform class methodsFor!

initialize
	self initializeXmlTable.
	self initializeUrlTable.
	self select!

initializeUrlTable
	UrlTable := ByteArray new: 256.
	1 to: 256 do: [ :index |
		('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.~' includes: (Character codePoint: index - 1))
			ifTrue: [ UrlTable at: index put: 0 ]
			ifFalse: [ UrlTable at: index put: 1 ] ]!

initializeXmlTable
	XmlTable := ByteArray new: 256.
	1 to: 256 do: [ :index |
		('"<&>' includes: (Character codePoint: index - 1))
			ifTrue: [ XmlTable at: index put: 1 ]
			ifFalse: [ XmlTable at: index put: 0 ] ]!

isSmtpServerSet
	^SmtpServer notNil and: [SmtpServer notEmpty]!

setSmtpServer
	"Set the SMTP server used to send outgoing messages via"
	SmtpServer ifNil: [SmtpServer := ''].
	SmtpServer := Prompter on: SmtpServer asValue prompt: 'What is your mail server for outgoing mail?' caption: 'SMTP configuration'!

smtpServer

	self isSmtpServerSet
		ifFalse: [self setSmtpServer].
	SmtpServer isEmpty ifTrue: [
		self error: 'no SMTP server specified'].
	^SmtpServer!

uninitialize
	self unload!

unload
	self unselect! !
!GRDolphinPlatform class categoriesFor: #initialize!class initialization!public! !
!GRDolphinPlatform class categoriesFor: #initializeUrlTable!class initialization!public! !
!GRDolphinPlatform class categoriesFor: #initializeXmlTable!class initialization!public! !
!GRDolphinPlatform class categoriesFor: #isSmtpServerSet!public! !
!GRDolphinPlatform class categoriesFor: #setSmtpServer!public! !
!GRDolphinPlatform class categoriesFor: #smtpServer!public! !
!GRDolphinPlatform class categoriesFor: #uninitialize!class initialization!public! !
!GRDolphinPlatform class categoriesFor: #unload!class initialization!public! !


"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #GRPlatform
	instanceVariableNames: ''
	classVariableNames: 'Current'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRPlatform guid: (GUID fromString: '{b1957812-482f-42d0-82be-473d6e281626}')!
GRPlatform comment: 'The abstract platform implementation. Each platform should provide a subclass implementing any abstract methods and overriding any other methods as necessary.Default implementations should be provided here when possible/useful but default implementations MUST be valid on ALL PLATFORMS so it is rarely practical. VA Smalltalk flags sends of uknown messages so even these must be known to exist on all platforms.Common cases where default implementations *are* appropriate are where there is a standard implementation that is valid on all platforms but one or more platforms have an additional, optimized implementation that should be used instead.All classes and methods used by methods of this class should be either:  + included in the Seaside-Platform package;  + defined by the ANSI Smalltalk standard; or  + (not ideal) referenced via ''Smalltalk at: #ClassName''.'!
!GRPlatform categoriesForClass!Grease-Core! !
!GRPlatform methodsFor!

addToShutDownList: anObject	"Add anObject to the shutdown-list of the system. On shutdown the message #shutDown will be sent to anObject."	self subclassResponsibility!

addToStartUpList: anObject	"Add anObject to the startup-list of the system. On startup the message #startUp will be sent to anObject."	self subclassResponsibility!

asMethodReturningByteArray: aByteArrayOrString named: aSymbol	"Generates the source of a method named aSymbol that returns aByteArrayOrString as a ByteArray"	self subclassResponsibility!

base64Decode: aString	"Base64 decode the given String and answer the result as a String."	self subclassResponsibility!

bindingOf: aClass	"Answer the binding of aClass.	The binding is the literal that get compiled into the method.	We need the binding to be updated when the class is changed.	The binding has to respond to #value.		This is mostly an issue on GemStone/S because when we hold on	to a class directly we will end up holding on to an old class version.		Dialects with namespaces will need to override this.		On VisualWorks this should like this	^ aClass fullyQualifiedReference"	^ Smalltalk associationAt: aClass name!

compile: aString into: aClass classified: aSymbol	"The trick here is to be as silently a possible so that the package is not marked dirty when running WAFileLibrary test.	This also makes running tests much faster."	self subclassResponsibility!

contentsOfFile: aString binary: aBoolean	self subclassResponsibility!

convertToSmalltalkNewlines: aString	"Convert any line endings (CR, CRLF, LF) to the default platform newline."		aString isNil 		ifTrue: [ ^ nil ].	^ String streamContents: [ :writeStream |		| readStream |		readStream := aString readStream.		[ readStream atEnd ] whileFalse: [			| next |			next := readStream next.			next = Character cr				ifTrue: [					readStream peek = Character lf						ifTrue: [ readStream skip: 1 ].					writeStream nextPutAll: self newline ]				ifFalse: [					next = Character lf						ifTrue: [ writeStream nextPutAll: self newline ]						ifFalse: [ writeStream nextPut: next ] ] ] ]!

deprecationExceptionSet	"Answer the exception set that should considered besides WADeprecation."	^ ExceptionSet new!

directoriesIn: aPathString	"Answer a collection of absolute paths for all the directories (no files) in the directory given by aPathString	must not include directory names that start with ."	self subclassResponsibility!

doTransaction: aBlock	"for Gemstone/S compatibility	http://gemstonesoup.wordpress.com/2007/05/10/porting-application-specific-seaside-threads-to-gemstone/	use when modifying an object from an outside thread"	^ aBlock value!

ensureExistenceOfFolder: aString	"Create a folder named aString in the image directory."	self subclassResponsibility!

fileExists: aString	self subclassResponsibility !

filesIn: aPathString	"Answer a collection of absolute paths for all the files (no directories) in the directory given by aPathString	must not include file names that start with ."	self subclassResponsibility!

fileStreamOn: aString do: aBlock binary: aBoolean	self subclassResponsibility !

isProcessTerminated: aProcess	"Return a boolean indicating whether aProcess has been terminated."		self subclassResponsibility!

label	"Answer a descriptive label string for the platform implementation"		self subclassResponsibility!

localNameOf: aFilename	"Answer the local name of a file identified by an absolute file path.		Eg.	If the platform is Windwos and aFilename is 'C:\Windows\win32.dll' then it would answer 'win32.dll'.	If the platform is Unix and aFilename is '/usr/bin/vim' then it would answer 'vim'."	self subclassResponsibility!

newline	"Answer a String with the default newline character of this platform."		self subclassResponsibility!

newRandom	"Answers the random number generator to be used to create session and continuation keys. Make sure it is seeded. They only methods that will be sent to it are:	  #nextInt: - should answer a random integer in the interval [1, anInteger]	  #randomFrom: - should answer a random element from the given collection		Make sure that both methods are safe under heavy concurrent load.		Used by Gemstone/S traditional Randoms which cannot be persisted.	Used by Squeak to use a secure random when avaiable."	self subclassResponsibility!

openDebuggerOn: anError	self subclassResponsibility!

pathSeparator	"Answer the path separator as a String, eg. '/' on Unix and '\' on Windows."	self subclassResponsibility!

readWriteByteStream	"Return a ReadWriteStream on a ByteArray that stores integers 0..255		^ReadWriteStream on: ByteArray new	"	^ self subclassResponsibility!

readWriteCharacterStream	"Return a ReadWriteStream on a String that stores characters		^ReadWriteStream on: String new	"	^ self subclassResponsibility!

reducedConflictDictionary	"used by Gemstone/S reduced conflict classes that can be used to avoid transaction conflicts"	^ Dictionary!

removeFromShutDownList: anObject	"Remove anObject from the shutdown list in the system."	self subclassResponsibility!

removeFromStartUpList: anObject	"Remove anObject from the startup list in the system."	self subclassResponsibility!

removeSelector: aSymbol from: aClass	self subclassResponsibility!

secureHashFor: aString	self subclassResponsibility!

semaphoreClass	"used by Gemstone/S traditional Semaphores which cannot be persisted"	self subclassResponsibility!

stackDepth	self subclassResponsibility!

terminateProcess: aProcess	"Permanently terminate the process, unwinding first to execute #ensure: and #ifCurtailed: blocks."		self subclassResponsibility!

version	"Answer the Grease version"	^ (GRVersion major: 1 minor: 1 revision: 10)		yourself!

versionString	^ String streamContents: [ :stream |		stream			nextPutAll: (self version greaseString);			nextPutAll: ' (';			nextPutAll: (self label);			nextPut: $) ]!

weakDictionaryOfSize: aNumber	self subclassResponsibility!

write: aStringOrByteArray toFile: aFileNameString inFolder: aFolderString	"Write aStringOrByteArray to a file named aFileNameString in the folder aFolderString."	self subclassResponsibility!

writeCharacterStreamOn: aString	"String based write stream"	^ WriteStream on: aString! !
!GRPlatform categoriesFor: #addToShutDownList:!public!startup! !
!GRPlatform categoriesFor: #addToStartUpList:!public!startup! !
!GRPlatform categoriesFor: #asMethodReturningByteArray:named:!file library!public! !
!GRPlatform categoriesFor: #base64Decode:!encoding!public! !
!GRPlatform categoriesFor: #bindingOf:!bindings!public! !
!GRPlatform categoriesFor: #compile:into:classified:!file library!public! !
!GRPlatform categoriesFor: #contentsOfFile:binary:!file library!public! !
!GRPlatform categoriesFor: #convertToSmalltalkNewlines:!file library!public! !
!GRPlatform categoriesFor: #deprecationExceptionSet!exceptions!public! !
!GRPlatform categoriesFor: #directoriesIn:!file library!public! !
!GRPlatform categoriesFor: #doTransaction:!public!transactions! !
!GRPlatform categoriesFor: #ensureExistenceOfFolder:!file library!public! !
!GRPlatform categoriesFor: #fileExists:!file library!public! !
!GRPlatform categoriesFor: #filesIn:!file library!public! !
!GRPlatform categoriesFor: #fileStreamOn:do:binary:!file library!public! !
!GRPlatform categoriesFor: #isProcessTerminated:!processes!public! !
!GRPlatform categoriesFor: #label!public!version info! !
!GRPlatform categoriesFor: #localNameOf:!file library!public! !
!GRPlatform categoriesFor: #newline!file library!public! !
!GRPlatform categoriesFor: #newRandom!factory!public! !
!GRPlatform categoriesFor: #openDebuggerOn:!exceptions!public! !
!GRPlatform categoriesFor: #pathSeparator!file library!public! !
!GRPlatform categoriesFor: #readWriteByteStream!factory!public! !
!GRPlatform categoriesFor: #readWriteCharacterStream!factory!public! !
!GRPlatform categoriesFor: #reducedConflictDictionary!factory!public! !
!GRPlatform categoriesFor: #removeFromShutDownList:!public!startup! !
!GRPlatform categoriesFor: #removeFromStartUpList:!public!startup! !
!GRPlatform categoriesFor: #removeSelector:from:!file library!public! !
!GRPlatform categoriesFor: #secureHashFor:!cryptography!public! !
!GRPlatform categoriesFor: #semaphoreClass!factory!public! !
!GRPlatform categoriesFor: #stackDepth!exceptions!public! !
!GRPlatform categoriesFor: #terminateProcess:!processes!public! !
!GRPlatform categoriesFor: #version!public!version info! !
!GRPlatform categoriesFor: #versionString!public!version info! !
!GRPlatform categoriesFor: #weakDictionaryOfSize:!factory!public! !
!GRPlatform categoriesFor: #write:toFile:inFolder:!file library!public! !
!GRPlatform categoriesFor: #writeCharacterStreamOn:!factory!public! !

!GRPlatform class methodsFor!

current	^ Current!

current: aPlatform	Current := aPlatform!

select	GRPlatform current: self new!

unselect	GRPlatform current class = self ifTrue: [ GRPlatform current: nil ]! !
!GRPlatform class categoriesFor: #current!public!registration! !
!GRPlatform class categoriesFor: #current:!public!registration! !
!GRPlatform class categoriesFor: #select!public!registration! !
!GRPlatform class categoriesFor: #unselect!public!registration! !


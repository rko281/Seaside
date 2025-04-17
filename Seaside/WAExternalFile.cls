"Filed out from Dolphin Smalltalk"!

WAAbstractFile subclass: #WAExternalFile
	instanceVariableNames: 'filePath'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExternalFile guid: (GUID fromString: '{d8fd1b17-9d0c-4691-904c-b66d58d73a14}')!

WAExternalFile comment: 'I represent a file on a file system.I know the name, the location and the MIME type of the file. I am mainly used for representing temporary files from streamed multipart uploads.You will probably want to move me from my initial directory (which is probably a temporary directory) to my final destination. E.g.externalFile fullyQualifiedFilePath asFileReference moveTo: FileLocator imageDirectory / ''final-destination'''!

!WAExternalFile categoriesForClass!HTTP! !

!WAExternalFile methodsFor!

exists	^ GRPlatform current fileExists: self fullyQualifiedFilePath!

filePath: aString	filePath := aString!

fullyQualifiedFilePath	^ filePath!

rawContents	^ GRPlatform current contentsOfFile: filePath binary: true!

size	^ self exists		ifTrue: [ GRPlatform current sizeOfFile: self fullyQualifiedFilePath ]		ifFalse: [ 0 ]! !

!WAExternalFile categoriesForMethods!
exists!public!testing! !
filePath:!accessing!public! !
fullyQualifiedFilePath!accessing!public! !
rawContents!accessing!public! !
size!accessing!public! !
!


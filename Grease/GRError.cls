"Filed out from Dolphin Smalltalk 7"!

Error subclass: #GRError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRError guid: (GUID fromString: '{d5d54199-694b-4405-b590-8cd0ae5d0772}')!
GRError comment: 'This class provides consistent initialization and exception signaling behaviour across platforms. All platforms must provide the ANSI-standard signaling protocol on this class. #signal: can therefore be safely called on any subclass.Packages that are using Seaside-Platform should usually subclass GRError instead of Error.'!
!GRError categoriesForClass!Grease-Core-Exceptions! !

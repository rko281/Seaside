"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Pragma
	instanceVariableNames: 'method arguments keyword'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Pragma guid: (GUID fromString: '{063dd954-ea28-4470-bc1d-6429bf6524a1}')!
Pragma comment: ''!
!Pragma categoriesForClass!Kernel-Objects! !
!Pragma methodsFor!

arguments
	^arguments!

arguments: anObject
	arguments := anObject!

displayMessageOn: aStream

	self arguments isEmpty 
		ifTrue: [aStream nextPutAll: self keyword]
		ifFalse: [self keyword keywords with: self arguments do: [ :keywordPart :argument | aStream nextPutAll: keywordPart; space; print: argument; space]. aStream position: aStream position - 1]!

displayOn: aStream

	aStream nextPut: $<.
	self displayMessageOn: aStream.
	aStream nextPut: $>!

displaySourceOn: aStream

	aStream nextPutAll: self class name; space.
	self displayMessageOn: aStream!

keyword
	^keyword!

keyword: anObject
	keyword := anObject!

method
	^method!

method: anObject
	method := anObject!

methodClass
	^self method methodClass!

methodSelector
	^self method selector!

printOn: aStream
	"Answer the name of the receiver as a developer would wish to see it ."

	super printOn: aStream.
	aStream nextPut: $(.
	self displayOn: aStream.
	aStream nextPut: $).! !
!Pragma categoriesFor: #arguments!accessing!public! !
!Pragma categoriesFor: #arguments:!accessing!private! !
!Pragma categoriesFor: #displayMessageOn:!printing!private! !
!Pragma categoriesFor: #displayOn:!printing!public! !
!Pragma categoriesFor: #displaySourceOn:!printing!public! !
!Pragma categoriesFor: #keyword!accessing!public! !
!Pragma categoriesFor: #keyword:!accessing!private! !
!Pragma categoriesFor: #method!accessing!public! !
!Pragma categoriesFor: #method:!accessing!private! !
!Pragma categoriesFor: #methodClass!accessing!public! !
!Pragma categoriesFor: #methodSelector!accessing!public! !
!Pragma categoriesFor: #printOn:!printing!public! !

!Pragma class methodsFor!

_captureSourceCode

	"Specify this pragma to save a copy of a method's source code in the method itself.
	Necessary when source code is needed for specific methods in a depoloyed image"

	| compileMethod frame sourceCode |

	compileMethod := Compiler class>>#compile:in:flags:.
	frame := Processor activeProcess topFrame.
	[sourceCode isNil and: [frame notNil]] whileTrue: 
		[frame method = compileMethod 
			ifTrue: [sourceCode := frame arguments first]
			ifFalse: [frame := frame sender]].

	^self new
		keyword: #_capturedSourceCode:;
		arguments: (Array with: sourceCode);
		yourself!

allNamed: aSymbol from: aSubClass to: aSuperClass
	"Answer a collection of all pragmas found in methods of all classes between aSubClass and aSuperClass (inclusive) whose keyword is aSymbol."
	
	^ Array streamContents: [ :stream |
		aSubClass withAllSuperclassesDo: [ :class |
			self withPragmasIn: class do:  [ :pragma |
				pragma keyword = aSymbol
					ifTrue: [ stream nextPut: pragma ] ].
			aSuperClass = class
				ifTrue: [ ^ stream contents ] ] ].!

allNamed: aSymbol from: aSubClass to: aSuperClass sortedUsing: aSortBlock
	"Answer a collection of all pragmas found in methods of all classes between aSubClass and aSuperClass (inclusive) whose keyword is aSymbol, sorted according to aSortBlock."
	
	^ (self allNamed: aSymbol from: aSubClass to: aSuperClass) sort: aSortBlock.!

allNamed: aSymbol in: aClass
	"Answer a collection of all pragmas found in methods of aClass whose keyword is aSymbol."
	
	^ Array streamContents: [ :stream |
		self withPragmasIn: aClass do: [ :pragma |
			pragma keyword = aSymbol
				ifTrue: [ stream nextPut: pragma ] ] ].!

allNamed: aSymbol in: aClass sortedUsing: aSortBlock
	"Answer a collection of all pragmas found in methods of aClass whose keyword is aSymbol, sorted according to aSortBlock."
	
	^ (self allNamed: aSymbol in: aClass) sort: aSortBlock.!

doesNotUnderstand: aMessage

	"Allow a Pragma to be created via a simple message send, e.g. 
	Pragma blah: 1 blahBlah: 'two' "

	^self new
		keyword: aMessage selector;
		arguments: aMessage arguments;
		yourself!

fromString: aString

	"Create an instance of the receiver based on standard (Pharo/VW) pragma syntax, e.g.
	<blah: 1 blahBlah: 'two'> "

	| readStream pragmaSource node |

	readStream := aString readStream.
	readStream next = $< ifFalse: [self error: 'invalid pragma'].
	pragmaSource := readStream upToEnd.
	pragmaSource last = $> ifFalse: [self error: 'invalid pragma'].
	node := SmalltalkParser parseExpression: 'self ', pragmaSource allButLast.

	^self new
		keyword: node selector;
		arguments: (node arguments collect: [ :each | each value]) asArray;
		yourself
!

withPragmasIn: aClass do: aBlock
	aClass selectorsAndMethodsDo: [ :selector :method | method pragmas do: aBlock ].! !
!Pragma class categoriesFor: #_captureSourceCode!development!instance creation!public! !
!Pragma class categoriesFor: #allNamed:from:to:!finding!public! !
!Pragma class categoriesFor: #allNamed:from:to:sortedUsing:!finding!public! !
!Pragma class categoriesFor: #allNamed:in:!finding!public! !
!Pragma class categoriesFor: #allNamed:in:sortedUsing:!finding!public! !
!Pragma class categoriesFor: #doesNotUnderstand:!instance creation!public! !
!Pragma class categoriesFor: #fromString:!development!instance creation!public! !
!Pragma class categoriesFor: #withPragmasIn:do:!finding!private! !


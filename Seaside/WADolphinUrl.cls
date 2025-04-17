"Filed out from Dolphin Smalltalk"!

WAUrl subclass: #WADolphinUrl
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADolphinUrl guid: (GUID fromString: '{a9287f10-82bc-4717-b56a-1152248d1835}')!

WADolphinUrl comment: 'Subclass exists to allow decodePercent:... methods to be reimplemented.
This is to take into account Dolphin''s implementation of Utf8String construction.'!

!WADolphinUrl categoriesForClass!Seaside-Core-HTTP! !

!WADolphinUrl class methodsFor!

decodePercent: aString	"percent decodes the given String"	| input output char |	input := aString readStream.	output := WriteStream on: (ByteArray new: aString size).	[ input atEnd ] whileFalse: [		char := input next.		output nextPut: (char = $+			ifTrue: [ Character space ]			ifFalse: [				char = $%					ifTrue: [						| firstByte secondByte |						firstByte :=  input atEnd ifTrue: [ WAInvalidUrlSyntaxError signal: aString ] ifFalse: [ input next asUppercase digitValue ].						secondByte :=  input atEnd ifTrue: [ WAInvalidUrlSyntaxError signal: aString ] ifFalse: [ input next asUppercase digitValue ].						firstByte * 16 + secondByte ]					ifFalse: [ char codePoint ] ]) ].	^ Utf8String fromByteArray: output contents!

decodePercent: aString from: start to: end	"percent decodes the string starting at the given index"	| input output index left |	index := aString indexOf: $% startingAt: start.	(index = 0 or: [ index >= end ])		ifTrue: [ ^ aString copyFrom: start to: end - 1 ].	input := aString readStream.	input skip: start - 1. "start index 1 -> skip 0"	output := WriteStream on: (ByteArray new: aString size).	left := end - start.	[ left > 0 and: [ input atEnd not ] ] whileTrue: [		| char |		char := input next.		output nextPut: (char = $%			ifTrue: [				| firstByte secondByte |				firstByte :=  input atEnd ifTrue: [ WAInvalidUrlSyntaxError signal: aString ] ifFalse: [ input next asUppercase digitValue ].				secondByte :=  input atEnd ifTrue: [ WAInvalidUrlSyntaxError signal: aString ] ifFalse: [ input next asUppercase digitValue ].				left := left - 3.				firstByte * 16 + secondByte ]			ifFalse: [				left := left - 1.				char codePoint]) ].	^ Utf8String fromByteArray: output contents!

decodePercentAndPlus: aString from: start to: end	"percent decodes the given String"	| percentIndex input output left |	"check if we contain %"	percentIndex := aString indexOf: $% startingAt: start.	(percentIndex = 0 or: [ percentIndex >= end ]) ifTrue: [		| plusIndex |		"check if we contain +"		plusIndex := aString indexOf: $+ startingAt: start.		(plusIndex = 0 or: [ plusIndex >= end ]) ifTrue: [			^ aString copyFrom: start to: end - 1 ] ].		"we contain either % or +"	input := aString readStream.	input skip: start - 1. "start index 1 -> skip 0"	output := WriteStream on: (ByteArray new: aString size).	left := end - start.	[ left > 0 and: [ input atEnd not ] ] whileTrue: [		| char |		char := input next.		output nextPut: (char = $+			ifTrue: [				left := left - 1.				Character space codePoint]			ifFalse: [				char = $%					ifTrue: [						| firstByte secondByte |						firstByte :=  input atEnd ifTrue: [ WAInvalidUrlSyntaxError signal: aString ] ifFalse: [ input next asUppercase digitValue ].						secondByte :=  input atEnd ifTrue: [ WAInvalidUrlSyntaxError signal: aString ] ifFalse: [ input next asUppercase digitValue ].						left := left - 3.						firstByte * 16 + secondByte ]					ifFalse: [						left := left - 1.						char codePoint] ]) ].	^ Utf8String fromByteArray: output contents! !

!WADolphinUrl class categoriesForMethods!
decodePercent:!decoding!public! !
decodePercent:from:to:!decoding!public! !
decodePercentAndPlus:from:to:!decoding!public! !
!


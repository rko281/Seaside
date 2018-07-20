"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAQualifiedValue
	instanceVariableNames: 'value quality'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAQualifiedValue guid: (GUID fromString: '{863e7ca8-9faf-452b-ba71-9975efaa36fc}')!
WAQualifiedValue comment: 'A WAQualifiedValue is an Object with an assigned quality value.Instance Variables	quality:		<Float>	value:		<Object>quality	- between 0.0 and 1.0 or Float infinity if no value is givenvalue	- the qualified object'!
!WAQualifiedValue categoriesForClass!Seaside-Core-HTTP! !
!WAQualifiedValue methodsFor!

<= other	^ self quality <= other quality!

printOn: aStream	super printOn: aStream.	aStream		nextPut: $(;		print: value;		nextPutAll: ',q=';		print: quality;		nextPut: $)!

quality	^ quality!

quality: aFloat	quality := aFloat!

value	^ value!

value: anObject	value := anObject! !
!WAQualifiedValue categoriesFor: #<=!comparing!public! !
!WAQualifiedValue categoriesFor: #printOn:!printing!public! !
!WAQualifiedValue categoriesFor: #quality!accessing!public! !
!WAQualifiedValue categoriesFor: #quality:!accessing!public! !
!WAQualifiedValue categoriesFor: #value!accessing!public! !
!WAQualifiedValue categoriesFor: #value:!accessing!public! !

!WAQualifiedValue class methodsFor!

fromString: aString	^ Array streamContents: [ :stream |		GRPlatform subStringsIn: aString splitBy: $, do: [ :each |			| value quality semicolonIndex |			quality := 1.0. "default value according to spec"			semicolonIndex := each indexOf: $;.			semicolonIndex = 0				ifTrue: [					value := self valueClass fromString: each trimBoth ]				ifFalse: [					| parameters |					parameters := nil.					value := self valueClass fromString: (each copyFrom: 1 to: semicolonIndex - 1) trimBoth.					GRPlatform subStringsIn: (each copyFrom: semicolonIndex + 1 to: each size) splitBy: $; do: [ :parameter |						| key parameterValue |						key := (parameter copyUpTo: $=) trimBoth.						parameterValue := (parameter copyAfter: $=) trimBoth.						key = 'q'							ifTrue: [								parameterValue first = $. ifTrue: [									"work around for Issue 655									some user agents send '.2' instead of '2.0'"									parameterValue := '0', parameterValue ].								quality := Float readFrom: parameterValue readStream ]							ifFalse: [								parameters isNil ifTrue: [									parameters := GRSmallDictionary new ].								parameters at: key put: parameterValue ] ].					(parameters isNil not and: [ value respondsTo: #parameters: ]) ifTrue: [						"only WAMimeType actually supports parameters"						value parameters: parameters ] ].			stream nextPut: (self value: value quality: quality) ] ]!

value: anObject quality: aFloat	^ self new		value: anObject;		quality: aFloat;		yourself!

valueClass	self subclassResponsibility! !
!WAQualifiedValue class categoriesFor: #fromString:!instance creation!public! !
!WAQualifiedValue class categoriesFor: #value:quality:!instance creation!public! !
!WAQualifiedValue class categoriesFor: #valueClass!private! !


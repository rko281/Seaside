﻿"Filed out from Dolphin Smalltalk 7"!

WARoute subclass: #WAComplexRoute
	instanceVariableNames: 'pathMatches parameterMatches isOverlyComplex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAComplexRoute guid: (GUID fromString: '{d1882f8b-d29c-40cf-a487-cd0e377d0a23}')!
WAComplexRoute comment: ''!
!WAComplexRoute categoriesForClass!Seaside-REST-Core-Route! !
!WAComplexRoute methodsFor!

argumentCount	| count |	count := 0.	pathMatches do: [ :each |		count := count + each argumentCount ].	parameterMatches do: [ :each |		count := count + each argumentCount ].	^ count !

buildPathMatchesFrom: aUrl arguments: aCollectionOfStrings	| index |	index := 0.	^ aUrl path collect: [ :each |		index := index + 1.		WAPPathMatch fromString: each index: index arguments: aCollectionOfStrings ]!

initializeQueryFieldParameters: queryFields arguments: aCollectionOfStrings	queryFields		keysAndValuesDo: [ :key :value | parameterMatches at: key put: (WAParameterMatch name: key value: value arguments: aCollectionOfStrings) ]!

initializeWithMethod: aString selector: aSymbol url: aUrl arguments: aCollectionOfStrings produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch	self		initializeWithMethod: aString		selector: aSymbol		produces: aProducesMimeTypeMatch		consumes: aConsumesMimeTypeMatch.	pathMatches := self buildPathMatchesFrom: aUrl arguments: aCollectionOfStrings.	parameterMatches := Dictionary new.	self initializeQueryFieldParameters: aUrl queryFields arguments: aCollectionOfStrings.	isOverlyComplex := pathMatches anySatisfy: [ :each | each matchesJustOneElement not ]!

isOverlyComplex	^ isOverlyComplex!

mapArgumentsWithElements: anArrayOfStrings parameters: aDictionary into: anArray	| offset |	offset := 0.	pathMatches do: [ :each |		each matchesJustOneElement ifFalse: [			offset := anArrayOfStrings size - pathMatches size ].		each mapArgumentsWithElements: anArrayOfStrings into: anArray usingOffset: offset ].	parameterMatches do: [ :each |		each mapArgumentsWithParameters: aDictionary into: anArray ]!

matchesFlexibleNumberOfPathElements	^ self isOverlyComplex!

matchesModeratelyComplex: aCollectionOfStrings		pathMatches size = aCollectionOfStrings size		ifFalse: [ ^ false ].	pathMatches with: aCollectionOfStrings do: [ :match :each |		(match matches: each)			ifFalse: [ ^ false ] ].	^ true!

matchesOverlyComplex: aCollectionOfStrings	| collectionIndex |	pathMatches size > (aCollectionOfStrings size + 1)		ifTrue: [ ^ false ].		collectionIndex := 1.	pathMatches keysAndValuesDo: [ :index :each |		each matchesJustOneElement			ifTrue: [				(each matches: (aCollectionOfStrings at: collectionIndex))					ifFalse: [ ^ false ].				collectionIndex := collectionIndex + 1 ]			ifFalse: [				| matchEnd |				matchEnd := aCollectionOfStrings size - (pathMatches size - index).				collectionIndex to: matchEnd do: [ :submatchIndex |					(each matches: (aCollectionOfStrings at: submatchIndex))						ifFalse: [ ^ false ] ].				collectionIndex := matchEnd + 1 ] ].	^ true!

matchesParameters: aDictionary	parameterMatches size = aDictionary size		ifFalse: [ ^ false ].	parameterMatches keysAndValuesDo: [ :name :match |		| value |		value := aDictionary at: name ifAbsent: [ ^ false ].		(match matchesName: name value: value)			ifFalse: [ ^ false ] ].	^ true!

matchesPath: aCollectionOfStrings	^ self isOverlyComplex		ifTrue: [ self matchesOverlyComplex: aCollectionOfStrings  ]		ifFalse: [ self matchesModeratelyComplex: aCollectionOfStrings ]!

pathElementCount	^ pathMatches size!

printOn: aStream	super printOn: aStream.	aStream 		nextPutAll: ' (pathMatches: '; print: pathMatches;		nextPutAll: ' parameterMatches: '; print: parameterMatches;		nextPutAll: ' isOverlyComplex: '; print: self isOverlyComplex;		nextPut: $)!

priority	^ pathMatches inject: 0 into: [ :sum :each |		sum + each priority ]! !
!WAComplexRoute categoriesFor: #argumentCount!accessing!public! !
!WAComplexRoute categoriesFor: #buildPathMatchesFrom:arguments:!private! !
!WAComplexRoute categoriesFor: #initializeQueryFieldParameters:arguments:!initialization!public! !
!WAComplexRoute categoriesFor: #initializeWithMethod:selector:url:arguments:produces:consumes:!initialization!public! !
!WAComplexRoute categoriesFor: #isOverlyComplex!private! !
!WAComplexRoute categoriesFor: #mapArgumentsWithElements:parameters:into:!public! !
!WAComplexRoute categoriesFor: #matchesFlexibleNumberOfPathElements!public!testing! !
!WAComplexRoute categoriesFor: #matchesModeratelyComplex:!private! !
!WAComplexRoute categoriesFor: #matchesOverlyComplex:!private! !
!WAComplexRoute categoriesFor: #matchesParameters:!public!testing! !
!WAComplexRoute categoriesFor: #matchesPath:!public!testing! !
!WAComplexRoute categoriesFor: #pathElementCount!accessing!public! !
!WAComplexRoute categoriesFor: #printOn:!printing!public! !
!WAComplexRoute categoriesFor: #priority!accessing!public! !

!WAComplexRoute class methodsFor!

example	^ self		get: '/{3}/_all_docs?startkey={1}&limit={2}'		selector: #getAllDocumentsStartingAt:limitedTo:inDatabase:!

method: aMethodString selector: aSymbol pattern: aPatternString	^ self		method: aMethodString		selector: aSymbol		url: (WAUrl absolute: aPatternString)		arguments: #()		produces: WAWildcardMimeTypeMatch new		consumes: WAWildcardMimeTypeMatch new!

method: aMethodString selector: aSymbol pattern: aPatternString arguments: aCollectionOfStrings produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch 	^ self		method: aMethodString		selector: aSymbol		url: (WAUrl absolute: aPatternString)		arguments: aCollectionOfStrings		produces: aProducesMimeTypeMatch		consumes: aConsumesMimeTypeMatch!

method: aString selector: aSymbol url: aUrl arguments: aCollectionOfStrings produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch	^ self basicNew		initializeWithMethod: aString		selector: aSymbol		url: aUrl		arguments: aCollectionOfStrings		produces: aProducesMimeTypeMatch		consumes: aConsumesMimeTypeMatch ! !
!WAComplexRoute class categoriesFor: #example!examples!public! !
!WAComplexRoute class categoriesFor: #method:selector:pattern:!instance creation!public! !
!WAComplexRoute class categoriesFor: #method:selector:pattern:arguments:produces:consumes:!instance creation!public! !
!WAComplexRoute class categoriesFor: #method:selector:url:arguments:produces:consumes:!instance creation!public! !


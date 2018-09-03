"Filed out from Dolphin Smalltalk 7"!

WARoute subclass: #WASimpleRoute
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASimpleRoute guid: (GUID fromString: '{b2384cd6-19d1-4d40-b5f1-3a70b5d315aa}')!
WASimpleRoute comment: 'I match only on an exact number of path elements and no URL parameters. The path elements are turned into message arguments.Instance Variables:	count	<Integer>		count	- The exact number of path elements that have to be present.'!
!WASimpleRoute categoriesForClass!Seaside-REST-Core-Route! !
!WASimpleRoute methodsFor!

argumentCount	^ self pathElementCount!

initializeWithMethod: aString count: anInteger selector: aSymbol produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch 	self initializeWithMethod: aString selector: aSymbol produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch .	count := anInteger!

mapArgumentsWithElements: anStringArray parameters: aDictionary into: anArray	1 to: self argumentCount do: [ :index |		anArray at: index put: (anStringArray at: index) ]!

matchesFlexibleNumberOfPathElements	^ false!

matchesParameters: aDictionary	^ aDictionary isEmpty!

matchesPath: aCollectionOfStrings	^ self pathElementCount = aCollectionOfStrings size!

pathElementCount	^ count!

priority	^ self pathElementCount! !
!WASimpleRoute categoriesFor: #argumentCount!accessing!public! !
!WASimpleRoute categoriesFor: #initializeWithMethod:count:selector:produces:consumes:!initialization!public! !
!WASimpleRoute categoriesFor: #mapArgumentsWithElements:parameters:into:!public! !
!WASimpleRoute categoriesFor: #matchesFlexibleNumberOfPathElements!public!testing! !
!WASimpleRoute categoriesFor: #matchesParameters:!public!testing! !
!WASimpleRoute categoriesFor: #matchesPath:!public!testing! !
!WASimpleRoute categoriesFor: #pathElementCount!accessing!public! !
!WASimpleRoute categoriesFor: #priority!accessing!public! !

!WASimpleRoute class methodsFor!

method: aString selector: aSymbol	^ self		method: aString		selector: aSymbol		produces: WAWildcardMimeTypeMatch new		consumes: WAWildcardMimeTypeMatch new!

method: aString selector: aSymbol produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch	"Can't send #count: in VAST"	| count |	count := 0.	aSymbol do: [ :each |		each = $: 			ifTrue: [ count := count + 1 ] ].	^ self basicNew		initializeWithMethod: aString		count: count		selector: aSymbol		produces: aProducesMimeTypeMatch		consumes: aConsumesMimeTypeMatch! !
!WASimpleRoute class categoriesFor: #method:selector:!instance creation!public! !
!WASimpleRoute class categoriesFor: #method:selector:produces:consumes:!instance creation!public! !


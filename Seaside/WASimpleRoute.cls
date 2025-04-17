"Filed out from Dolphin Smalltalk"!

WARoute subclass: #WASimpleRoute
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASimpleRoute guid: (GUID fromString: '{114a1431-4ee9-432e-8391-eb227705af0b}')!

WASimpleRoute comment: 'I match only on an exact number of path elements and no URL parameters. The path elements are turned into message arguments.Instance Variables:	count	<Integer>		count	- The exact number of path elements that have to be present.'!

!WASimpleRoute categoriesForClass!Route! !

!WASimpleRoute methodsFor!

argumentCount	^ self pathElementCount!

initializeWithMethod: aString count: anInteger selector: aSymbol produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch 	self initializeWithMethod: aString selector: aSymbol produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch .	count := anInteger!

mapArgumentsWithElements: anStringArray parameters: aDictionary into: anArray	1 to: self argumentCount do: [ :index |		anArray at: index put: (anStringArray at: index) ]!

matchesFlexibleNumberOfPathElements	^ false!

matchesParameters: aDictionary	^ aDictionary isEmpty!

matchesPath: aCollectionOfStrings	^ self pathElementCount = aCollectionOfStrings size!

pathElementCount	^ count!

priority	^ self pathElementCount! !

!WASimpleRoute categoriesForMethods!
argumentCount!accessing!public! !
initializeWithMethod:count:selector:produces:consumes:!initialization!public! !
mapArgumentsWithElements:parameters:into:!public! !
matchesFlexibleNumberOfPathElements!public!testing! !
matchesParameters:!public!testing! !
matchesPath:!public!testing! !
pathElementCount!accessing!public! !
priority!accessing!public! !
!

!WASimpleRoute class methodsFor!

method: aString selector: aSymbol	^ self		method: aString		selector: aSymbol		produces: WAWildcardMimeTypeMatch new		consumes: WAWildcardMimeTypeMatch new!

method: aString selector: aSymbol produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch	"Can't send #count: in VAST"	| count |	count := 0.	aSymbol do: [ :each |		each = $: 			ifTrue: [ count := count + 1 ] ].	^ self basicNew		initializeWithMethod: aString		count: count		selector: aSymbol		produces: aProducesMimeTypeMatch		consumes: aConsumesMimeTypeMatch! !

!WASimpleRoute class categoriesForMethods!
method:selector:!instance creation!public! !
method:selector:produces:consumes:!instance creation!public! !
!


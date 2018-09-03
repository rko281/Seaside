"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARoute
	instanceVariableNames: 'method selector produces consumes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARoute guid: (GUID fromString: '{a771d71b-eab0-494a-9f66-aebf2d01cbd2}')!
WARoute comment: 'I am a message that can be sent if I match a request. Message arguments can be taken from the request.Instance Variables:	method		<String>	selector	<Symbol>	produces 	<WAMatch>	consumes 	<WAMatch>		method	- The HTTP method on which to follow this route, eg. ''GET''selector	- The selector to perform, eg. #index	produces	- The MIME type this route produces (Content-Type HTTP header)	consumes	- The MIME type this route accepts (Accept HTTP header)'!
!WARoute categoriesForClass!Seaside-REST-Core-Route! !
!WARoute methodsFor!

argumentCount	self subclassResponsibility!

consumes	^ consumes!

consumes: aMimeType	^ consumes matches: aMimeType!

consumesPriorityFor: aMimeType	^ consumes priorityFor: aMimeType!

initializeWithMethod: aString selector: aSymbol produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch 	self initialize.	method := aString.	selector := aSymbol.	produces := aProducesMimeTypeMatch.	consumes := aConsumesMimeTypeMatch!

mapArgumentsWithElements: anStringArray parameters: aDictionary into: anArray	self subclassResponsibility!

matchesFlexibleNumberOfPathElements	self subclassResponsibility!

matchesParameters: aDictionary	self subclassResponsibility!

matchesPath: aCollectionOfStrings	self subclassResponsibility!

method	^ method!

pathElementCount	self subclassResponsibility!

printOn: aStream	super printOn: aStream.	aStream 		nextPutAll: ' (method: '; print: self method;		nextPutAll: ' selector: '; print: self selector;		nextPutAll: ' produces: '; print: self seasideMimeType;		nextPutAll: ' consumes: '; print: consumes;		nextPut: $)!

priority	self subclassResponsibility!

produces: aCollectionOfAccept	^ aCollectionOfAccept anySatisfy: [ :each | produces matches: each value ]!

producesPriorityFor: aMimeType	^ produces priorityFor: aMimeType!

seasideMimeType	"Answer the value of the content-type header according to the value of <consumes: >.	Answer nil for missing values."	^ produces seasideMimeType!

selector	^ selector!

sendSelectorWith: anArrayOfArguments to: anObject	^ anObject perform: selector withArguments: anArrayOfArguments! !
!WARoute categoriesFor: #argumentCount!accessing!public! !
!WARoute categoriesFor: #consumes!accessing!public! !
!WARoute categoriesFor: #consumes:!public!testing! !
!WARoute categoriesFor: #consumesPriorityFor:!accessing!public! !
!WARoute categoriesFor: #initializeWithMethod:selector:produces:consumes:!initialization!public! !
!WARoute categoriesFor: #mapArgumentsWithElements:parameters:into:!public! !
!WARoute categoriesFor: #matchesFlexibleNumberOfPathElements!public!testing! !
!WARoute categoriesFor: #matchesParameters:!public!testing! !
!WARoute categoriesFor: #matchesPath:!public!testing! !
!WARoute categoriesFor: #method!accessing!public! !
!WARoute categoriesFor: #pathElementCount!accessing!public! !
!WARoute categoriesFor: #printOn:!printing!public! !
!WARoute categoriesFor: #priority!accessing!public! !
!WARoute categoriesFor: #produces:!public!testing! !
!WARoute categoriesFor: #producesPriorityFor:!accessing!public! !
!WARoute categoriesFor: #seasideMimeType!accessing!public! !
!WARoute categoriesFor: #selector!accessing!public! !
!WARoute categoriesFor: #sendSelectorWith:to:!public! !

!WARoute class methodsFor!

copy: aSymbol	^ WASimpleRoute method: 'COPY' selector: aSymbol!

delete: aSymbol	^ WASimpleRoute method: 'DELETE' selector: aSymbol!

delete: aString selector: aSymbol	^ WAComplexRoute		method: 'DELETE'		selector: aSymbol		pattern: aString!

get: aSymbol	^ WASimpleRoute method: 'GET' selector: aSymbol!

get: aString selector: aSymbol	^ WAComplexRoute		method: 'GET'		selector: aSymbol		pattern: aString!

httpMethodNames	^ #(		COPY		DELETE		GET		MOVE		POST		PUT	)!

move: aSymbol	^ WASimpleRoute method: 'MOVE' selector: aSymbol!

options: aSymbol	^ WASimpleRoute method: 'OPTIONS' selector: aSymbol!

options: aString selector: aSymbol	^ WAComplexRoute		method: 'OPTIONS'		selector: aSymbol		pattern: aString!

patch: aSymbol	^ WASimpleRoute method: 'PATCH' selector: aSymbol!

patch: aString selector: aSymbol	^ WAComplexRoute		method: 'PATCH'		selector: aSymbol		pattern: aString!

post: aSymbol	^ WASimpleRoute method: 'POST' selector: aSymbol!

post: aString selector: aSymbol	^ WAComplexRoute		method: 'POST'		selector: aSymbol		pattern: aString!

put: aSymbol	^ WASimpleRoute method: 'PUT' selector: aSymbol!

put: aString selector: aSymbol	^ WAComplexRoute		method: 'PUT'		selector: aSymbol		pattern: aString! !
!WARoute class categoriesFor: #copy:!instance creation!public! !
!WARoute class categoriesFor: #delete:!instance creation!public! !
!WARoute class categoriesFor: #delete:selector:!instance creation!public! !
!WARoute class categoriesFor: #get:!instance creation!public! !
!WARoute class categoriesFor: #get:selector:!instance creation!public! !
!WARoute class categoriesFor: #httpMethodNames!instance creation!public! !
!WARoute class categoriesFor: #move:!instance creation!public! !
!WARoute class categoriesFor: #options:!instance creation!public! !
!WARoute class categoriesFor: #options:selector:!instance creation!public! !
!WARoute class categoriesFor: #patch:!instance creation!public! !
!WARoute class categoriesFor: #patch:selector:!instance creation!public! !
!WARoute class categoriesFor: #post:!instance creation!public! !
!WARoute class categoriesFor: #post:selector:!instance creation!public! !
!WARoute class categoriesFor: #put:!instance creation!public! !
!WARoute class categoriesFor: #put:selector:!instance creation!public! !


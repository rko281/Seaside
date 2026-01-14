"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WARoute
	instanceVariableNames: 'method selector produces consumes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARoute guid: (GUID fromString: '{5e5d888b-774a-49de-a48d-53715736927b}')!

WARoute comment: 'I am a message that can be sent if I match a request. Message arguments can be taken from the request.Instance Variables:	method		<String>: The HTTP method on which to follow this route, eg. ''GET''	selector	<Symbol>: The selector to perform, eg. #index	produces 	<WAMatch>: The MIME type this route produces (Content-Type HTTP header)	consumes 	<WAMatch>: The MIME type this route accepts (Accept HTTP header)'!

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

!WARoute categoriesForMethods!
argumentCount!accessing!public! !
consumes!accessing!public! !
consumes:!public!testing! !
consumesPriorityFor:!accessing!public! !
initializeWithMethod:selector:produces:consumes:!initialization!public! !
mapArgumentsWithElements:parameters:into:!public! !
matchesFlexibleNumberOfPathElements!public!testing! !
matchesParameters:!public!testing! !
matchesPath:!public!testing! !
method!accessing!public! !
pathElementCount!accessing!public! !
printOn:!printing!public! !
priority!accessing!public! !
produces:!public!testing! !
producesPriorityFor:!accessing!public! !
seasideMimeType!accessing!public! !
selector!accessing!public! !
sendSelectorWith:to:!public! !
!

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

!WARoute class categoriesForMethods!
copy:!instance creation!public! !
delete:!instance creation!public! !
delete:selector:!instance creation!public! !
get:!instance creation!public! !
get:selector:!instance creation!public! !
httpMethodNames!instance creation!public! !
move:!instance creation!public! !
options:!instance creation!public! !
options:selector:!instance creation!public! !
patch:!instance creation!public! !
patch:selector:!instance creation!public! !
post:!instance creation!public! !
post:selector:!instance creation!public! !
put:!instance creation!public! !
put:selector:!instance creation!public! !
!


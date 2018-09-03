﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARoute
	instanceVariableNames: 'method selector produces consumes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARoute guid: (GUID fromString: '{a771d71b-eab0-494a-9f66-aebf2d01cbd2}')!
WARoute comment: 'I am a message that can be sent if I match a request. Message arguments can be taken from the request.
!WARoute categoriesForClass!Seaside-REST-Core-Route! !
!WARoute methodsFor!

argumentCount

consumes

consumes: aMimeType

consumesPriorityFor: aMimeType

initializeWithMethod: aString selector: aSymbol produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch 

mapArgumentsWithElements: anStringArray parameters: aDictionary into: anArray

matchesFlexibleNumberOfPathElements

matchesParameters: aDictionary

matchesPath: aCollectionOfStrings

method

pathElementCount

printOn: aStream

priority

produces: aCollectionOfAccept

producesPriorityFor: aMimeType

seasideMimeType

selector

sendSelectorWith: anArrayOfArguments to: anObject
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

copy: aSymbol

delete: aSymbol

delete: aString selector: aSymbol

get: aSymbol

get: aString selector: aSymbol

httpMethodNames

move: aSymbol

options: aSymbol

options: aString selector: aSymbol

patch: aSymbol

patch: aString selector: aSymbol

post: aSymbol

post: aString selector: aSymbol

put: aSymbol

put: aString selector: aSymbol
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

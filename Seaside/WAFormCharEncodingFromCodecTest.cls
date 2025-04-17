"Filed out from Dolphin Smalltalk"!

WAAbstractCanvasBrushTest subclass: #WAFormCharEncodingFromCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFormCharEncodingFromCodecTest guid: (GUID fromString: '{5d083e84-4ea3-4512-b33e-658e35cf6d6c}')!

WAFormCharEncodingFromCodecTest comment: 'I test that the encoding of the codec on the request context overwrites the encoding on the application.'!

!WAFormCharEncodingFromCodecTest categoriesForClass!Brushes! !

!WAFormCharEncodingFromCodecTest methodsFor!

createCodec	^ GRCodec forEncoding: 'iso-8859-1'!

createHandlers	| handler |	handler := WARequestHandler new.	handler preferenceAt: #charSet put: 'utf-16'.	^ Array with: handler!

testCharCodingWithHandler	"569: Encoding information doesn't get included in the response"	self		assert: [ :html |			html basicForm ]		gives: '<form accept-charset="iso-8859-1" method="post" action="/"></form>'! !

!WAFormCharEncodingFromCodecTest categoriesForMethods!
createCodec!configuration!public! !
createHandlers!configuration!public! !
testCharCodingWithHandler!public!tests! !
!


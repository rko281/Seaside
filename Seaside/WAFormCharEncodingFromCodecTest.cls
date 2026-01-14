"Filed out from Dolphin Smalltalk"!

WAAbstractCanvasBrushTest subclass: #WAFormCharEncodingFromCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFormCharEncodingFromCodecTest guid: (GUID fromString: '{84cea881-f8a9-46c2-bbc5-1d0b0a18f9b9}')!

WAFormCharEncodingFromCodecTest comment: 'I test that the encoding of the codec on the request context overwrites the encoding on the application.'!

!WAFormCharEncodingFromCodecTest categoriesForClass!Seaside-Tests-Canvas-Brushes! !

!WAFormCharEncodingFromCodecTest methodsFor!

createCodec	^ GRCodec forEncoding: 'iso-8859-1'!

createHandlers	| handler |	handler := WARequestHandler new.	handler preferenceAt: #charSet put: 'utf-16'.	^ Array with: handler!

testCharCodingWithHandler	"569: Encoding information doesn't get included in the response"	self		assert: [ :html |			html basicForm ]		gives: '<form accept-charset="iso-8859-1" method="post" action="/"></form>'! !

!WAFormCharEncodingFromCodecTest categoriesForMethods!
createCodec!configuration!public! !
createHandlers!configuration!public! !
testCharCodingWithHandler!public!tests! !
!


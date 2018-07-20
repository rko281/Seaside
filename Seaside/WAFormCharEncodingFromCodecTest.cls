"Filed out from Dolphin Smalltalk 7"!

WAAbstractCanvasBrushTest subclass: #WAFormCharEncodingFromCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFormCharEncodingFromCodecTest guid: (GUID fromString: '{6925d4d7-6aac-40a3-b5a7-376a3bd2dfeb}')!
WAFormCharEncodingFromCodecTest comment: 'I test that the encoding of the codec on the request context overwrites the encoding on the application.'!
!WAFormCharEncodingFromCodecTest categoriesForClass!Seaside-Tests-Canvas! !
!WAFormCharEncodingFromCodecTest methodsFor!

createCodec	^ GRCodec forEncoding: 'iso-8859-1'!

createHandlers	| handler |	handler := WARequestHandler new.	handler preferenceAt: #charSet put: 'utf-16'.	^ Array with: handler!

testCharCodingWithHandler	"569: Encoding information doesn't get included in the response"	self		assert: [ :html |			html basicForm ]		gives: '<form accept-charset="iso-8859-1" method="post" action="/"></form>'! !
!WAFormCharEncodingFromCodecTest categoriesFor: #createCodec!configuration!public! !
!WAFormCharEncodingFromCodecTest categoriesFor: #createHandlers!configuration!public! !
!WAFormCharEncodingFromCodecTest categoriesFor: #testCharCodingWithHandler!public!tests! !


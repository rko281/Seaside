"Filed out from Dolphin Smalltalk 7"!

WARegistryTest subclass: #WAApplicationEncodingFromCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAApplicationEncodingFromCodecTest guid: (GUID fromString: '{93015457-61d0-4fb9-b341-0e9c489fcac7}')!
WAApplicationEncodingFromCodecTest comment: ''!
!WAApplicationEncodingFromCodecTest categoriesForClass!Seaside-Tests-Session! !
!WAApplicationEncodingFromCodecTest methodsFor!

createCodec	^ GRCodec forEncoding: 'iso-8859-1'!

newHandler	^ WAApplication new		preferenceAt: #charSet put: 'utf-16';		yourself!

testContentType	self assert: handler contentType = ('text/html' seasideMimeType		charset: 'iso-8859-1';		yourself)! !
!WAApplicationEncodingFromCodecTest categoriesFor: #createCodec!configuration!public! !
!WAApplicationEncodingFromCodecTest categoriesFor: #newHandler!private! !
!WAApplicationEncodingFromCodecTest categoriesFor: #testContentType!public!tests! !


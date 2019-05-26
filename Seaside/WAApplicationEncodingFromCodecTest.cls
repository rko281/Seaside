"Filed out from Dolphin Smalltalk 7"!

WARegistryTest subclass: #WAApplicationEncodingFromCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAApplicationEncodingFromCodecTest guid: (GUID fromString: '{1c43d02f-0fec-4012-b8e6-a71461274bf3}')!
WAApplicationEncodingFromCodecTest comment: ''!
!WAApplicationEncodingFromCodecTest categoriesForClass!Seaside-Tests-Session! !
!WAApplicationEncodingFromCodecTest methodsFor!

createCodec	^ GRCodec forEncoding: 'iso-8859-1'!

newHandler	^ WAApplication new		preferenceAt: #charSet put: 'utf-16';		yourself!

testContentType	self assert: handler contentType = ('text/html' seasideMimeType		charset: 'iso-8859-1';		yourself)! !
!WAApplicationEncodingFromCodecTest categoriesFor: #createCodec!configuration!public! !
!WAApplicationEncodingFromCodecTest categoriesFor: #newHandler!private! !
!WAApplicationEncodingFromCodecTest categoriesFor: #testContentType!public!tests! !


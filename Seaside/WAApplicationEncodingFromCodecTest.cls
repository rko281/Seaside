"Filed out from Dolphin Smalltalk"!

WARegistryTest subclass: #WAApplicationEncodingFromCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAApplicationEncodingFromCodecTest guid: (GUID fromString: '{a4735752-6ba4-4be8-8a85-252bcd227778}')!

WAApplicationEncodingFromCodecTest comment: ''!

!WAApplicationEncodingFromCodecTest categoriesForClass!Unclassified! !

!WAApplicationEncodingFromCodecTest methodsFor!

createCodec	^ GRCodec forEncoding: 'iso-8859-1'!

newHandler	^ WAApplication new		preferenceAt: #charSet put: 'utf-16';		yourself!

testContentType	self assert: handler contentType = ('text/html' seasideMimeType		charset: 'iso-8859-1';		yourself)! !

!WAApplicationEncodingFromCodecTest categoriesForMethods!
createCodec!configuration!public! !
newHandler!private! !
testContentType!public!tests! !
!


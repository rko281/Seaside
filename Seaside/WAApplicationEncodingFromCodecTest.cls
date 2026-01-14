"Filed out from Dolphin Smalltalk"!

WARegistryTest subclass: #WAApplicationEncodingFromCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAApplicationEncodingFromCodecTest guid: (GUID fromString: '{89e2f7ab-50b3-4756-9e5d-2d21aa3fe02a}')!

WAApplicationEncodingFromCodecTest comment: ''!

!WAApplicationEncodingFromCodecTest categoriesForClass!Seaside-Tests-Session! !

!WAApplicationEncodingFromCodecTest methodsFor!

createCodec	^ GRCodec forEncoding: 'iso-8859-1'!

newHandler	^ WAApplication new		preferenceAt: #charSet put: 'utf-16';		yourself!

testContentType	self assert: handler contentType = ('text/html' seasideMimeType		charset: 'iso-8859-1';		yourself)! !

!WAApplicationEncodingFromCodecTest categoriesForMethods!
createCodec!configuration!public! !
newHandler!private! !
testContentType!public!tests! !
!


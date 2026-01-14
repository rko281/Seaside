"Filed out from Dolphin Smalltalk"!

WARegistryTest subclass: #WAApplicationEncodingFallbackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAApplicationEncodingFallbackTest guid: (GUID fromString: '{2fe94736-cb74-4f35-b5d4-d7bce77ad9e6}')!

WAApplicationEncodingFallbackTest comment: ''!

!WAApplicationEncodingFallbackTest categoriesForClass!Seaside-Tests-Session! !

!WAApplicationEncodingFallbackTest methodsFor!

newHandler	^ WAApplication new		preferenceAt: #charSet put: 'utf-16';		yourself!

testContentType	self assert: handler contentType = ('text/html' seasideMimeType		charset: 'utf-16';		yourself)! !

!WAApplicationEncodingFallbackTest categoriesForMethods!
newHandler!private! !
testContentType!public!tests! !
!


"Filed out from Dolphin Smalltalk 7"!

WARegistryTest subclass: #WAApplicationEncodingFallbackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAApplicationEncodingFallbackTest guid: (GUID fromString: '{58bf94cf-a1ca-408e-a802-7c0510fc75cb}')!
WAApplicationEncodingFallbackTest comment: ''!
!WAApplicationEncodingFallbackTest categoriesForClass!Seaside-Tests-Session! !
!WAApplicationEncodingFallbackTest methodsFor!

newHandler	^ WAApplication new		preferenceAt: #charSet put: 'utf-16';		yourself!

testContentType	self assert: handler contentType = ('text/html' seasideMimeType		charset: 'utf-16';		yourself)! !
!WAApplicationEncodingFallbackTest categoriesFor: #newHandler!private! !
!WAApplicationEncodingFallbackTest categoriesFor: #testContentType!public!tests! !


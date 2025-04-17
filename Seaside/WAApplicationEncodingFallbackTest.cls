"Filed out from Dolphin Smalltalk"!

WARegistryTest subclass: #WAApplicationEncodingFallbackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAApplicationEncodingFallbackTest guid: (GUID fromString: '{780418de-c1d2-46d1-a805-44eb12da3ec9}')!

WAApplicationEncodingFallbackTest comment: ''!

!WAApplicationEncodingFallbackTest categoriesForClass!Unclassified! !

!WAApplicationEncodingFallbackTest methodsFor!

newHandler	^ WAApplication new		preferenceAt: #charSet put: 'utf-16';		yourself!

testContentType	self assert: handler contentType = ('text/html' seasideMimeType		charset: 'utf-16';		yourself)! !

!WAApplicationEncodingFallbackTest categoriesForMethods!
newHandler!private! !
testContentType!public!tests! !
!


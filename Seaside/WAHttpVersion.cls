"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAHttpVersion
	instanceVariableNames: 'major minor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHttpVersion guid: (GUID fromString: '{8a25d414-d43d-4f52-89f7-b1a23818d773}')!
WAHttpVersion comment: ''!
!WAHttpVersion categoriesForClass!Seaside-Core-HTTP! !
!WAHttpVersion methodsFor!

< otherVersion	^ (major < otherVersion major) or: [		(major = otherVersion major) and: [ minor < otherVersion minor ] ]!

<= otherVersion	^ (self = otherVersion) or: [ self < otherVersion ]!

= otherVersion	^ (major = otherVersion major) and: [ minor = otherVersion minor ]!

> otherVersion	^ (major > otherVersion major) or: [		(major = otherVersion major) and: [ minor > otherVersion minor ] ]!

>= otherVersion	^ (self = otherVersion) or: [ self > otherVersion ]!

hash	^ major hash bitXor: minor hash!

initializeWithMajor: majorInteger minor: minorInteger	self initialize.	major := majorInteger.	minor := minorInteger!

isHttp10	^ major = 1 and: [ minor = 0 ]!

isHttp11	^ major = 1 and: [ minor = 1 ]!

major	^ major!

minor	^ minor!

printOn: aStream	aStream nextPutAll: 'HTTP/'.	major printOn: aStream.	aStream nextPut: $..	minor printOn: aStream! !
!WAHttpVersion categoriesFor: #<!comparing!public! !
!WAHttpVersion categoriesFor: #<=!comparing!public! !
!WAHttpVersion categoriesFor: #=!comparing!public! !
!WAHttpVersion categoriesFor: #>!comparing!public! !
!WAHttpVersion categoriesFor: #>=!comparing!public! !
!WAHttpVersion categoriesFor: #hash!comparing!public! !
!WAHttpVersion categoriesFor: #initializeWithMajor:minor:!initialization!public! !
!WAHttpVersion categoriesFor: #isHttp10!public!testing! !
!WAHttpVersion categoriesFor: #isHttp11!public!testing! !
!WAHttpVersion categoriesFor: #major!accessing!public! !
!WAHttpVersion categoriesFor: #minor!accessing!public! !
!WAHttpVersion categoriesFor: #printOn:!printing!public! !

!WAHttpVersion class methodsFor!

fromString: aString	^ self readFrom: aString readStream!

http10	^ self major: 1 minor: 0!

http11	^ self major: 1 minor: 1!

major: majorInteger minor: minorInteger	^ self basicNew		initializeWithMajor: majorInteger minor: minorInteger;		yourself!

new	^ self http11!

readFrom: aStream 	| major minor |	[ aStream peek = Character space ] whileTrue: [ aStream next ].	aStream peek = $H ifTrue: [ aStream skipTo: $/ ].	"Skip over 'HTTP/' "	major := aStream upTo: $..	minor := aStream upTo: Character space.	^ self 		major: major greaseInteger		minor: minor greaseInteger! !
!WAHttpVersion class categoriesFor: #fromString:!instance creation!public! !
!WAHttpVersion class categoriesFor: #http10!instance creation!public! !
!WAHttpVersion class categoriesFor: #http11!instance creation!public! !
!WAHttpVersion class categoriesFor: #major:minor:!instance creation!public! !
!WAHttpVersion class categoriesFor: #new!instance creation!public! !
!WAHttpVersion class categoriesFor: #readFrom:!instance creation!public! !


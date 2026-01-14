"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAHttpVersion
	instanceVariableNames: 'major minor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHttpVersion guid: (GUID fromString: '{383e449a-67be-4bed-a9bf-7ce151350518}')!

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

!WAHttpVersion categoriesForMethods!
<!comparing!public! !
<=!comparing!public! !
=!comparing!public! !
>!comparing!public! !
>=!comparing!public! !
hash!comparing!public! !
initializeWithMajor:minor:!initialization!public! !
isHttp10!public!testing! !
isHttp11!public!testing! !
major!accessing!public! !
minor!accessing!public! !
printOn:!printing!public! !
!

!WAHttpVersion class methodsFor!

fromString: aString	^ self readFrom: aString readStream!

http10	^ self major: 1 minor: 0!

http11	^ self major: 1 minor: 1!

major: majorInteger minor: minorInteger	^ self basicNew		initializeWithMajor: majorInteger minor: minorInteger;		yourself!

new	^ self http11!

readFrom: aStream 	| major minor |	[ aStream peek = Character space ] whileTrue: [ aStream next ].	aStream peek = $H ifTrue: [ aStream skipTo: $/ ].	"Skip over 'HTTP/' "	major := aStream upTo: $..	minor := aStream upTo: Character space.	^ self 		major: major greaseInteger		minor: minor greaseInteger! !

!WAHttpVersion class categoriesForMethods!
fromString:!instance creation!public! !
http10!instance creation!public! !
http11!instance creation!public! !
major:minor:!instance creation!public! !
new!instance creation!public! !
readFrom:!instance creation!public! !
!


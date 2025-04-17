"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WACache
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACache guid: (GUID fromString: '{aa234fe5-38fe-43d1-837b-83cb8fb70062}')!

WACache comment: 'WACacheis the abstract base class for session and continuation stores in Seaside. The default implementation is WAHashCache.'!

!WACache categoriesForClass!Cache! !

!WACache methodsFor!

at: aKey ifAbsent: aBlock	self subclassResponsibility!

at: aKey put: anObject	self subclassResponsibility!

clear	self subclassResponsibility!

keyAtValue: anObject ifAbsent: aBlock	self subclassResponsibility!

keysAndValuesDo: aTwoArgumentBlock	self subclassResponsibility!

keySize	^ 16!

remove: anObject	self subclassResponsibility!

size	self subclassResponsibility!

store: anObject	"Store anObject in the cache, generating a new random key. Return the key."	self subclassResponsibility! !

!WACache categoriesForMethods!
at:ifAbsent:!accessing!public! !
at:put:!public!putting! !
clear!public! !
keyAtValue:ifAbsent:!accessing!public! !
keysAndValuesDo:!enumerating!public! !
keySize!accessing!public! !
remove:!public!removing! !
size!accessing!public! !
store:!public!putting! !
!


"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WACache
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACache guid: (GUID fromString: '{1028881b-e4a4-4b4c-b655-eb9ecfcf98c5}')!
WACache comment: 'WACacheNG is the abstract base class for session and continuation stores in Seaside. The default implementation is WAHashCacheNG.'!
!WACache categoriesForClass!Seaside-Core-Cache! !
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
!WACache categoriesFor: #at:ifAbsent:!accessing!public! !
!WACache categoriesFor: #at:put:!public!putting! !
!WACache categoriesFor: #clear!public! !
!WACache categoriesFor: #keyAtValue:ifAbsent:!accessing!public! !
!WACache categoriesFor: #keysAndValuesDo:!enumerating!public! !
!WACache categoriesFor: #keySize!accessing!public! !
!WACache categoriesFor: #remove:!public!removing! !
!WACache categoriesFor: #size!accessing!public! !
!WACache categoriesFor: #store:!public!putting! !


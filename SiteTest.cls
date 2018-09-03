"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SiteTest
	instanceVariableNames: 'site'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SiteTest guid: (GUID fromString: '{a2106cb2-a435-4908-8951-5cfbf83829ab}')!
SiteTest comment: ''!
!SiteTest categoriesForClass!Unclassified! !
!SiteTest methodsFor!

addSecondAlias
	site addAlias: (SiteIdentifier 
				host: 'swazoo2.org'
				ip: '127.0.0.2'
				port: 8202).!

setUp
	super setUp.
	site := SwazooSite new.
	site addAlias: (SiteIdentifier 
				host: 'swazoo.org'
				ip: '127.0.0.1'
				port: 8200)!

testCurrentUrl
	site currentUrl = 'http://swazoo.org:8200'.
	self addSecondAlias.
	site currentUrl = 'http://swazoo.org:8200'.!

testCurrentUrl80
	| aSite |
	aSite := SwazooSite new.
	aSite addAlias: (SiteIdentifier
			host: 'swazoo.org'
			ip: '127.0.0.1'
			port: 80).
	aSite currentUrl = 'http://swazoo.org'.
	aSite currentUrl = 'http://swazoo.org'! !
!SiteTest categoriesFor: #addSecondAlias!public!running! !
!SiteTest categoriesFor: #setUp!public!running! !
!SiteTest categoriesFor: #testCurrentUrl!public!testing! !
!SiteTest categoriesFor: #testCurrentUrl80!public!testing! !


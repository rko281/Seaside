"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SwazooServerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooServerTest guid: (GUID fromString: '{bb866307-e712-4e3b-b36c-8aef41a9c2ce}')!
SwazooServerTest comment: ''!
!SwazooServerTest categoriesForClass!Unclassified! !
!SwazooServerTest methodsFor!

removeAllTestSites

	SwazooServer singleton allSites do: [:each | SwazooServer singleton removeSite: each]!

removeTestSiteIfAny
	
	| site |
	site := SwazooServer siteNamed: self testSiteName.
	site notNil ifTrue: [SwazooServer singleton removeSite: site]!

testAccessingSite
	
	| site |
	self removeTestSiteIfAny.
	site := (SwazooSite new)
		name: self testSiteName;
		host: 'test.org' ip: 'localhost' port: 8543.
	[SwazooServer singleton addSite: site.
	self assert: (SwazooServer siteNamed: self testSiteName) notNil.
	site := SwazooServer siteNamed: self testSiteName.
	self assert: site name = self testSiteName.
	self assert: (SwazooServer siteHostnamed: 'test.org') notNil.
	site := SwazooServer siteHostnamed: 'test.org'.
	self assert: site host = 'test.org']
		ensure: [SwazooServer singleton removeSite: site]!

testAddingAllInterfacesSite
	"site to listen on all IP interfaces but on specified port"
	
	| site server |
	self removeAllTestSites.
	server := SwazooServer singleton.
	self assert: (server siteNamed: self testSiteName) isNil.
	site := (SwazooSite new)
		name: self testSiteName;
		host: '*' ip: '*' port: 7261.
	[server addSite: site.
	self assert: (server siteNamed: self testSiteName) notNil]
		ensure: [server removeSite: site]!

testAddingSite
	
	| site server nrSites |
	self removeTestSiteIfAny.
	server := SwazooServer singleton.
	nrSites := server sites size.
	self assert: (server siteNamed: self testSiteName) isNil.
	self assert: (server siteHostnamed: self testSiteName) isNil.
	site := (SwazooSite new)
		name: self testSiteName;
		host: 'test.org' ip: 'localhost' port: 5798.
	server addSite: site.
	self assert: (server siteNamed: self testSiteName) notNil.
	self assert: (server siteHostnamed: 'test.org') notNil.
	server removeSite: site.
	self assert: server sites size = nrSites!

testAllInterfacesTwoPortSites
	"two sites can run on all IP interfaces and different port"
	
	| server site1 site2 |
	server := SwazooServer singleton.
	site1 := (SwazooSite new)
		name: 'allInterfaces1';
		host: '*' ip: '*' port: 7261.
	site2 := (SwazooSite new)
		name: 'allInterfaces2';
		host: '*' ip: '*' port: 7262.
	[server addSite: site1.
	self
		shouldnt: [server addSite: site2]
		raise: Error]
		ensure:
			[server
				removeSite: site1;
				removeSite: site2]!

testAllStarsThenExactOnOtherPort
	
	| server site1 site2 |
	server := SwazooServer singleton.
	site1 := (SwazooSite new)
		name: 'allstar232';
		host: '*' ip: '*' port: 7261.
	site2 := (SwazooSite new)
		name: 'exactdfdf';
		host: 'localhost' ip: 'localhost' port: 7262.
	[server addSite: site1.
	self
		shouldnt:
			[server
				addSite: site2;
				removeSite: site2]
		raise: Error] ensure: [server removeSite: site1]!

testDuplicateAllInterfacesSite
	"two sites cannot run on all IP interfaces and same port"
	
	| server site1 site2 |
	server := SwazooServer singleton.
	site1 := (SwazooSite new)
		name: 'allInterfaces1';
		host: '*' ip: '*' port: 7261.
	site2 := (SwazooSite new)
		name: 'allInterfaces2';
		host: '*' ip: '*' port: 7261.
	[server addSite: site1.
	self
		should: [server addSite: site2]
		raise: Error] ensure: [server removeSite: site1]!

testDuplicateNames
	
	| site server |
	self removeTestSiteIfAny.
	server := SwazooServer singleton.
	site := (SwazooSite new)
		name: self testSiteName;
		host: 'test.org' ip: 'localhost' port: 6376.
	[server addSite: site.
	self
		should: [site name: self testSiteName]
		raise: Error.
	self
		shouldnt: [site host: 'test.org']
		raise: Error.
	self
		should:
			[(SwazooSite new)
				name: self testSiteName;
				host: 'test.org' ip: 'localhost' port: 6376]
		raise: Error] ensure: [server removeSite: site]!

testSiteName
	
	^'aaabbcc987'!

testStartingOnAPort
	"and all ip interfaces, any host"
	
	| site server nrServers |
	server := SwazooServer singleton.
	nrServers := server servers size.
	[site := server startOn: 4924.
	self assert: site isServing.
	self assert: server servers size = (nrServers + 1).
	server stopOn: 4924.
	self assert: site isServing not.
	self assert: server servers size = nrServers]
		ensure:
			[site stop.
			server removeSite: site]!

testStartingOnTwoPorts
	"and all ip interfaces, any host"
	
	| server nrServers site1 site2 |
	server := SwazooServer singleton.
	nrServers := server servers size.
	[site1 := server startOn: 4924.
	site2 := server startOn: 4925.
	self assert: site1 isServing.
	self assert: site2 isServing.
	self assert: server servers size = (nrServers + 2).
	server stopOn: 4924.
	server stopOn: 4925.
	self assert: site1 isServing not.
	self assert: site2 isServing not.
	self assert: server servers size = nrServers]
		ensure:
			[site1 stop.
			site2 stop.
			server
				removeSite: site1;
				removeSite: site2]!

testStartingSite
	
	| site server nrServers |
	self removeTestSiteIfAny.
	server := SwazooServer singleton.
	nrServers := server servers size.
	site := (SwazooSite new)
		name: self testSiteName;
		host: 'test.org' ip: 'localhost' port: 8765.
	[server addSite: site.
	self assert: site isServing not.
	SwazooServer startSite: self testSiteName.
	self assert: server servers size = (nrServers + 1).
	self assert: site isServing.
	SwazooServer stopSite: self testSiteName.
	self assert: site isServing not.
	self assert: server servers size = nrServers]
		ensure:
			[site stop.
			server removeSite: site]! !
!SwazooServerTest categoriesFor: #removeAllTestSites!public!testing-adding sites! !
!SwazooServerTest categoriesFor: #removeTestSiteIfAny!public!support! !
!SwazooServerTest categoriesFor: #testAccessingSite!public!testing! !
!SwazooServerTest categoriesFor: #testAddingAllInterfacesSite!public!testing-adding sites! !
!SwazooServerTest categoriesFor: #testAddingSite!public!testing-adding sites! !
!SwazooServerTest categoriesFor: #testAllInterfacesTwoPortSites!public!testing-adding sites! !
!SwazooServerTest categoriesFor: #testAllStarsThenExactOnOtherPort!public!testing-adding sites! !
!SwazooServerTest categoriesFor: #testDuplicateAllInterfacesSite!public!testing-adding sites! !
!SwazooServerTest categoriesFor: #testDuplicateNames!public!testing-adding sites! !
!SwazooServerTest categoriesFor: #testSiteName!public!support! !
!SwazooServerTest categoriesFor: #testStartingOnAPort!public!testing! !
!SwazooServerTest categoriesFor: #testStartingOnTwoPorts!public!testing! !
!SwazooServerTest categoriesFor: #testStartingSite!public!testing! !


"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SwazooConfigurationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooConfigurationTest guid: (GUID fromString: '{ea0d019f-1e10-4d63-9a11-67a43afb5e0f}')!
SwazooConfigurationTest comment: ''!
!SwazooConfigurationTest categoriesForClass!Unclassified! !
!SwazooConfigurationTest methodsFor!

testCompositeResourceSite
	| rs site composite howdy duh hithere |
	rs := ReadStream 
				on: '<Site>
 <CompositeResource uriPattern: ''/''>
  <HelloWorldResource uriPattern: ''howdy''>
  <CompositeResource uriPattern: ''duh''>
   <HelloWorldResource uriPattern: ''hithere''>
  </CompositeResource>
 </CompositeResource>
</Site>'.
	site := SwazooSite new readFrom: rs.
	self assert: site children size = 1.
	composite := site children first.
	self assert: composite class == CompositeResource.
	self assert: composite uriPattern = '/'.
	self assert: composite children size = 2.
	self assert: composite parent == site.
	howdy := composite children first.
	self assert: (howdy class == HelloWorldResource).
	self assert: howdy uriPattern = 'howdy'.
	self assert: howdy parent == composite.
	duh := composite children last.
	self assert: duh children size = 1.
	self assert: duh class == CompositeResource.
	self assert: duh uriPattern = 'duh'.
	self assert: duh parent == composite.
	hithere := duh children first.
	self assert: hithere class == HelloWorldResource.
	self assert: hithere uriPattern = 'hithere'.
	self assert: hithere parent == duh.!

testEmptySite
	| rs site alias |
	rs := ReadStream 
				on: '<Site>
 <SiteIdentifier ip: ''192.168.1.66'' port: 80 host: ''swazoo.org''>
</Site>'.
	site := SwazooSite new readFrom: rs.
	self assert: site aliases size = 1.
	self assert: site currentUrl = 'http://swazoo.org/'.
	alias := site aliases first.
	self assert: alias host = 'swazoo.org'.
	self assert: alias ip = '192.168.1.66'.
	self assert: alias port = 80!

testFileResourceSite
	| rs site resource |
	rs := ReadStream 
				on: '<Site>
<SiteIdentifier ip: ''192.168.1.66'' port: 80 host: ''swazoo.org''>
 <FileResource uriPattern: ''/'' filePath: ''files''>
</Site>'.
	site := SwazooSite new readFrom: rs.
	self assert: site children size = 1.
	resource := site children first.
	self assert: resource class == FileResource.
	self assert: resource uriPattern = '/'.
	self assert: resource filePath = 'files'.
	self assert: resource parent == site.
	self assert: resource currentUrl = 'http://swazoo.org/'.!

testMultipleResourcesSite
	| rs site resource1 resource2 |
	rs := ReadStream 
				on: '<Site>
 <HelloWorldResource uriPattern: ''/''>
 <HelloWorldResource uriPattern: ''/''>
</Site>'.
	site := SwazooSite new readFrom: rs.
	self assert: site children size = 2.
	resource1 := site children first.
	self assert: (resource1 class == HelloWorldResource).
	self assert: resource1 uriPattern = '/'.
	resource2 := site children last.
	self assert: resource2 class == HelloWorldResource.
	self assert: resource2 uriPattern = '/'!

testMultipleSites
	| rs sites site alias1 alias2 |
	rs := ReadStream 
				on: '<Site>
 <SiteIdentifier ip: ''192.168.1.66'' port: 80 host: ''swazoo.org''>
 <SiteIdentifier ip: ''192.168.1.66'' port: 81 host: ''swazoo.org''>
</Site>
<Site>
</Site>'.
	sites := SwazooServer readSitesFrom: rs.
	self assert: sites size = 2.
	site := sites first.
	self assert: site aliases size = 2.
	alias1 := site aliases first.
	self assert: alias1 host = 'swazoo.org'.
	self assert: alias1 ip = '192.168.1.66'.
	self assert: alias1 port = 80.
	alias2 := site aliases last.
	self assert: alias2 host = 'swazoo.org'.
	self assert: alias2 ip = '192.168.1.66'.
	self assert: alias2 port = 81!

testSingleResourceSite
	| rs site resource |
	rs := ReadStream on: '<Site>
<SiteIdentifier ip: ''192.168.1.66'' port: 80 host: ''swazoo.org''>
 <HelloWorldResource uriPattern: ''/''>
</Site>'.
	site := SwazooSite new readFrom: rs.
	self assert: site children size = 1.
	resource := site children first.
	self assert: (resource class == HelloWorldResource).
	self assert: resource uriPattern = '/'.
	self assert: resource parent == site.
	self assert: resource currentUrl = 'http://swazoo.org/'.!

testSiteTag
	| rs config tag |
	rs := ReadStream on: '  <Site>  

</Site>   '.
	config := SwazooSite new.
	tag := config nextTagFrom: rs.
	self assert: tag = 'Site'.
	tag := config nextTagFrom: rs.
	self assert: tag = '/Site'.
	self assert: (config nextTagFrom: rs) isNil! !
!SwazooConfigurationTest categoriesFor: #testCompositeResourceSite!public!testing! !
!SwazooConfigurationTest categoriesFor: #testEmptySite!public!testing! !
!SwazooConfigurationTest categoriesFor: #testFileResourceSite!public!testing! !
!SwazooConfigurationTest categoriesFor: #testMultipleResourcesSite!public!testing! !
!SwazooConfigurationTest categoriesFor: #testMultipleSites!public!testing! !
!SwazooConfigurationTest categoriesFor: #testSingleResourceSite!public!testing! !
!SwazooConfigurationTest categoriesFor: #testSiteTag!public!testing! !


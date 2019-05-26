"Filed out from Dolphin Smalltalk 7"!

WAAbstractCanvasBrushTest subclass: #WAResourceBaseUrlTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAResourceBaseUrlTest guid: (GUID fromString: '{1c66582e-ae95-485b-8e86-306172378d42}')!
WAResourceBaseUrlTest comment: ''!
!WAResourceBaseUrlTest categoriesForClass!Seaside-Tests-Canvas! !
!WAResourceBaseUrlTest methodsFor!

assertRoot: aBlock gives: aString	| html |	html := self builder		fullDocument: true;		rootBlock: aBlock;		render: [ :canvas | ].	self assert: html = ('<html><head><title></title>', aString, '</head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>')!

builder	^ super builder		resourceUrl: (WAUrl absolute: self resourceBaseUrl);		yourself!

resourceBaseUrl	^ 'https://www.seaside.st/resources/'!

testAbsoluteFtpUrl	self		assert: [ :html | html anchor resourceUrl: 'ftp://www.google.com/track.js' ]		gives: '<a href="ftp://www.google.com/track.js"></a>'!

testAbsoluteHttpsUrl	self		assert: [ :html | html anchor resourceUrl: 'https://www.google.com/track.js' ]		gives: '<a href="https://www.google.com/track.js"></a>'!

testAbsoluteHttpUrl	self		assert: [ :html | html anchor resourceUrl: 'http://www.google.com/track.js' ]		gives: '<a href="http://www.google.com/track.js"></a>'!

testFileNameWithHttp	self		assert: [ :html | html image resourceUrl: 'http.gif' ]		gives: '<img alt="" src="',self resourceBaseUrl,'http.gif"/>'!

testImageTag	self		assert: [ :html | html image resourceUrl: 'logo.jpeg' ]		gives: '<img alt="" src="',self resourceBaseUrl,'logo.jpeg"/>'!

testRootScript	self		assertRoot: [ :html | html javascript resourceUrl: 'main.js' ]		gives: '<script type="text/javascript" src="',self resourceBaseUrl,'main.js"></script>'!

testScriptTag	self		assert: [ :html | html script resourceUrl: 'track.js' ]		gives: '<script src="',self resourceBaseUrl,'track.js" type="text/javascript"></script>'!

testSylesheet	self		assertRoot: [ :html | html stylesheet resourceUrl: 'main.css' ]		gives: '<link rel="stylesheet" type="text/css" href="',self resourceBaseUrl,'main.css"/>'! !
!WAResourceBaseUrlTest categoriesFor: #assertRoot:gives:!private! !
!WAResourceBaseUrlTest categoriesFor: #builder!private! !
!WAResourceBaseUrlTest categoriesFor: #resourceBaseUrl!private! !
!WAResourceBaseUrlTest categoriesFor: #testAbsoluteFtpUrl!public!tests/attributes! !
!WAResourceBaseUrlTest categoriesFor: #testAbsoluteHttpsUrl!public!tests/attributes! !
!WAResourceBaseUrlTest categoriesFor: #testAbsoluteHttpUrl!public!tests/attributes! !
!WAResourceBaseUrlTest categoriesFor: #testFileNameWithHttp!public!tests/attributes! !
!WAResourceBaseUrlTest categoriesFor: #testImageTag!public!tests/attributes! !
!WAResourceBaseUrlTest categoriesFor: #testRootScript!public!tests/attributes! !
!WAResourceBaseUrlTest categoriesFor: #testScriptTag!public!tests/tags! !
!WAResourceBaseUrlTest categoriesFor: #testSylesheet!public!tests/attributes! !


"Filed out from Dolphin Smalltalk"!

WAAbstractCanvasBrushTest subclass: #WAResourceBaseUrlTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAResourceBaseUrlTest guid: (GUID fromString: '{abbb2dd4-3729-45d5-9d8f-38f4e30bb1b5}')!

WAResourceBaseUrlTest comment: ''!

!WAResourceBaseUrlTest categoriesForClass!Brushes! !

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

!WAResourceBaseUrlTest categoriesForMethods!
assertRoot:gives:!private! !
builder!private! !
resourceBaseUrl!private! !
testAbsoluteFtpUrl!public!tests/attributes! !
testAbsoluteHttpsUrl!public!tests/attributes! !
testAbsoluteHttpUrl!public!tests/attributes! !
testFileNameWithHttp!public!tests/attributes! !
testImageTag!public!tests/attributes! !
testRootScript!public!tests/attributes! !
testScriptTag!public!tests/tags! !
testSylesheet!public!tests/attributes! !
!


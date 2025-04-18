﻿"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WARenderingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARenderingTest guid: (GUID fromString: '{84b29047-5ac9-4a79-be14-32b23ebb0a45}')!

WARenderingTest comment: ''!

!WARenderingTest categoriesForClass!Base! !

!WARenderingTest methodsFor!

assert: aBlock gives: aString	| html |	html := WAHtmlCanvas builder		fullDocument: false;		rootBlock: aBlock;		render: aBlock.	self assert: aString equals: html!

assertRoot: aBlock gives: aString	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: aBlock;		render: [ :canvas | ].	self assert: '<html><head>' , aString , '</head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>' = html!

testConditionalComment	self		assertRoot: [ :html |			html if greaterThan; orEqual; ie55; do: [				html script					defer;					url: 'http://www.example.com/bugs.js' ] ]		gives: '<title></title><!!--[if gte IE 5.5]><script defer src="http://www.example.com/bugs.js"></script><!![endif]-->'.			self		assertRoot: [ :html |			html if not; ie; do: [				html script					url: 'http://www.example.com/bugs.js' ] ]		gives: '<title></title><!!--[if !! IE]><script src="http://www.example.com/bugs.js"></script><!![endif]-->'!

testContentType	self		assertRoot: [ :html |			html meta contentType: 'application/xhtml+xml' seasideMimeType  ]		gives: '<title></title><meta http-equiv="Content-Type" content="application/xhtml+xml"/>'.	self		assertRoot: [ :html |			html meta contentType: 'application/xhtml+xml'  ]		gives: '<title></title><meta http-equiv="Content-Type" content="application/xhtml+xml"/>'!

testInteger	self		assert: [ :canvas | canvas render: 123 ]		gives: '123'.	self		assert: [ :canvas | canvas render: -123 ]		gives: '-123'!

testJavascript	self		assertRoot: [ :html |			html javascript				add: 'true & false'  ]		gives: '<title></title><script type="text/javascript">true & false</script>'!

testLinkElement	self		assertRoot: [ :html |			html stylesheet				addAural;				addTeletype;				title: 'aTilte';				url: 'http://example.com/style.css'  ]		gives: '<title></title><link rel="stylesheet" type="text/css" media="aural, tty" title="aTilte" href="http://example.com/style.css"/>'!

testLinkElementWithContent	self		assertRoot: [ :html |			html stylesheet				add: 'div > em { color: blue; }'  ]		gives: '<title></title><style type="text/css">div > em { color: blue; }</style>'.	self		assertRoot: [ :html |			html stylesheet				add: 'E[foo$="bar"]'  ]		gives: '<title></title><style type="text/css">E[foo$="bar"]</style>'!

testRevealedConditionalComment		self assertRoot: [ :html |			html revealedIf ie7; do: [				html script					defer;					url: 'http://www.example.com/bugs.js' ] ]		gives: '<title></title><!!--[if IE 7]><!!--><script defer src="http://www.example.com/bugs.js"></script><!!--<!![endif]-->'!

testStyle		self			assertRoot: [ :html |				html style: 'body{font-size:12px;}' ]			gives: '<title></title><style>body{font-size:12px;}</style>'! !

!WARenderingTest categoriesForMethods!
assert:gives:!private! !
assertRoot:gives:!private! !
testConditionalComment!public!tests! !
testContentType!public!tests! !
testInteger!public!tests! !
testJavascript!public!tests! !
testLinkElement!public!tests! !
testLinkElementWithContent!public!tests! !
testRevealedConditionalComment!public!tests! !
testStyle!public!tests! !
!


"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WARenderingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARenderingTest guid: (GUID fromString: '{982ad104-cfdd-4c8b-9b69-306a4f004150}')!
WARenderingTest comment: ''!
!WARenderingTest categoriesForClass!Seaside-Tests-Canvas! !
!WARenderingTest methodsFor!

assert: aBlock gives: aString	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: aBlock;		render: [ :canvas | ].	self assert: '<html><head>' , aString , '</head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>' = html!

testConditionalComment	self		assert: [ :html |			html if greaterThan; orEqual; ie55; do: [				html script					defer;					url: 'http://www.example.com/bugs.js' ] ]		gives: '<title></title><!!--[if gte IE 5.5]><script defer="defer" src="http://www.example.com/bugs.js"></script><!![endif]-->'.			self		assert: [ :html |			html if not; ie; do: [				html script					url: 'http://www.example.com/bugs.js' ] ]		gives: '<title></title><!!--[if !! IE]><script src="http://www.example.com/bugs.js"></script><!![endif]-->'!

testContentType	self		assert: [ :html |			html meta contentType: 'application/xhtml+xml' seasideMimeType  ]		gives: '<title></title><meta http-equiv="Content-Type" content="application/xhtml+xml"/>'.	self		assert: [ :html |			html meta contentType: 'application/xhtml+xml'  ]		gives: '<title></title><meta http-equiv="Content-Type" content="application/xhtml+xml"/>'!

testJavascript	self		assert: [ :html |			html javascript				add: 'true & false'  ]		gives: '<title></title><script type="text/javascript">true & false</script>'!

testLinkElement	self		assert: [ :html |			html stylesheet				addAural;				addTeletype;				title: 'aTilte';				url: 'http://example.com/style.css'  ]		gives: '<title></title><link rel="stylesheet" type="text/css" media="aural, tty" title="aTilte" href="http://example.com/style.css"/>'!

testLinkElementWithContent	self		assert: [ :html |			html stylesheet				add: 'div > em { color: blue; }'  ]		gives: '<title></title><style type="text/css">div > em { color: blue; }</style>'.	self		assert: [ :html |			html stylesheet				add: 'E[foo$="bar"]'  ]		gives: '<title></title><style type="text/css">E[foo$="bar"]</style>'	!

testRevealedConditionalComment		self assert: [ :html |			html revealedIf ie7; do: [				html script					defer;					url: 'http://www.example.com/bugs.js' ] ]		gives: '<title></title><!!--[if IE 7]><!!--><script defer="defer" src="http://www.example.com/bugs.js"></script><!!--<!![endif]-->'! !
!WARenderingTest categoriesFor: #assert:gives:!private! !
!WARenderingTest categoriesFor: #testConditionalComment!public!tests! !
!WARenderingTest categoriesFor: #testContentType!public!tests! !
!WARenderingTest categoriesFor: #testJavascript!public!tests! !
!WARenderingTest categoriesFor: #testLinkElement!public!tests! !
!WARenderingTest categoriesFor: #testLinkElementWithContent!public!tests! !
!WARenderingTest categoriesFor: #testRevealedConditionalComment!public!tests! !


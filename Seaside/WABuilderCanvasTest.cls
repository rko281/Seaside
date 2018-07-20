"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WABuilderCanvasTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABuilderCanvasTest guid: (GUID fromString: '{5392d936-409c-4b8a-a0e8-8b77b84fe0cf}')!
WABuilderCanvasTest comment: ''!
!WABuilderCanvasTest categoriesForClass!Seaside-Tests-Canvas! !
!WABuilderCanvasTest methodsFor!

testBody	| actual |	actual := WAHtmlCanvas builder render: [ :html |		html unorderedList: [			html listItem: 'an item' ] ].	self assert: actual = '<ul><li>an item</li></ul>'!

testFullDocument	| actual |	actual := WAHtmlCanvas builder fullDocument: true; render: [ :html |		html unorderedList: [			html listItem: 'an item' ] ].	self assert: actual = '<html><head><title></title></head><body onload="onLoad()"><ul><li>an item</li></ul><script type="text/javascript">function onLoad(){};</script></body></html>'!

testFullDocumentWithBlock	| actual |	actual := WAHtmlCanvas builder fullDocument: true;		rootBlock: [ :root |			root title: 'title'.			root stylesheet add: 'body{font-size:12px;}'.			root javascript add: 'alert("loaded")' ];		render: [ :html |			html unorderedList: [				html listItem: 'an item' ] ].	self assert: actual =  '<html><head><title>title</title><style type="text/css">body{font-size:12px;}</style><script type="text/javascript">alert("loaded")</script></head><body onload="onLoad()"><ul><li>an item</li></ul><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!WABuilderCanvasTest categoriesFor: #testBody!public!tests! !
!WABuilderCanvasTest categoriesFor: #testFullDocument!public!tests! !
!WABuilderCanvasTest categoriesFor: #testFullDocumentWithBlock!public!tests! !


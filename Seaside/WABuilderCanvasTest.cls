"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WABuilderCanvasTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABuilderCanvasTest guid: (GUID fromString: '{fb3e6310-2972-493b-8fb0-60424ec2bf49}')!

WABuilderCanvasTest comment: ''!

!WABuilderCanvasTest categoriesForClass!Base! !

!WABuilderCanvasTest methodsFor!

testBody	| actual |	actual := WAHtmlCanvas builder render: [ :html |		html unorderedList: [			html listItem: 'an item' ] ].	self assert: actual = '<ul><li>an item</li></ul>'!

testFullDocument	| actual |	actual := WAHtmlCanvas builder fullDocument: true; render: [ :html |		html unorderedList: [			html listItem: 'an item' ] ].	self assert: actual = '<html><head><title></title></head><body onload="onLoad()"><ul><li>an item</li></ul><script type="text/javascript">function onLoad(){};</script></body></html>'!

testFullDocumentWithBlock	| actual |	actual := WAHtmlCanvas builder fullDocument: true;		rootBlock: [ :root |			root title: 'title'.			root stylesheet add: 'body{font-size:12px;}'.			root javascript add: 'alert("loaded")' ];		render: [ :html |			html unorderedList: [				html listItem: 'an item' ] ].	self assert: actual =  '<html><head><title>title</title><style type="text/css">body{font-size:12px;}</style><script type="text/javascript">alert("loaded")</script></head><body onload="onLoad()"><ul><li>an item</li></ul><script type="text/javascript">function onLoad(){};</script></body></html>'!

testRenderOnCustomStream	| actual |	actual := String streamContents: [ :stream |		WAHtmlCanvas builder			render: [ :html |				html unorderedList: [					html listItem: 'an item' ] ]			on: stream ].	self assert: actual = '<ul><li>an item</li></ul>'! !

!WABuilderCanvasTest categoriesForMethods!
testBody!public!tests! !
testFullDocument!public!tests! !
testFullDocumentWithBlock!public!tests! !
testRenderOnCustomStream!public!tests! !
!


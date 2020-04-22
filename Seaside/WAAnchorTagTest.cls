"Filed out from Dolphin Smalltalk 7"!

WAAbstractCanvasBrushTest subclass: #WAAnchorTagTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAnchorTagTest guid: (GUID fromString: '{c63e20c1-dcef-47de-892a-0dd6300f6318}')!
WAAnchorTagTest comment: ''!
!WAAnchorTagTest categoriesForClass!Seaside-Tests-Canvas! !
!WAAnchorTagTest methodsFor!

testAnchor	self		assert: [ :html | html anchor ]		gives: '<a></a>'.	self		assert: [ :html | html anchor callback: [ ]; with: 'foo' ]		gives: '<a href="/?1">foo</a>'.	self		assert: [ :html |			html anchor callback: [ ]; with: 'foo'.			html anchor callback: [ ]; with: 'bar' ]		gives: '<a href="/?1">foo</a><a href="/?2">bar</a>'.	self		assert: [ :html |			html anchor				extraPath: 'zork';				callback: [ ];				with: 'foo' ]		gives: '<a href="/zork?1">foo</a>'.	self		assert: [ :html |			html anchor				extraParameters: 'zork';				callback: [ ];				with: 'foo' ]		gives: '<a href="/?zork&amp;1">foo</a>'!

testAnchorAttributes	self		assert: [ :html | html anchor charset: 'utf-8' ]		gives: '<a charset="utf-8"></a>'.	self		assert: [ :html | html anchor name: 'foo' ]		gives: '<a name="foo"></a>'.	self		assert: [ :html | html anchor relationship: 'home' ]		gives: '<a rel="home"></a>'.	self		assert: [ :html | html anchor relationship: 'home'; relationship: 'parent' ]		gives: '<a rel="home parent"></a>'.	self		assert: [ :html | html anchor reverse: 'home' ]		gives: '<a rev="home"></a>'.	self		assert: [ :html | html anchor reverse: 'home'; reverse: 'parent' ]		gives: '<a rev="home parent"></a>'.	self		assert: [ :html | html anchor target: '_new' ]		gives: '<a target="_new"></a>'.	self		assert: [ :html | html anchor type: 'text/plain' ]		gives: '<a type="text/plain"></a>'!

testAnchorCallback	self		assert: [ :html | html anchor callback: [ ] ]		gives: '<a href="/?1"></a>'.			self		assert: [ :html | 			self 				should: [ html anchor callback: [ :value | ] ]				raise: Error ]		gives: '<a></a>'!

testAnchorUrl	| url string |	url := WAUrl new.	url		host: 'www.seaside.st';		addToPath: 'foo bar&zork<blah';		addField: '1' value: nil;		addField: '2' value: 123;		addField: '3' value: 'foo bar&zork'.	string := 'http://www.seaside.st/foo%20bar%26zork%3Cblah?1&amp;2=123&amp;3=foo%20bar%26zork'.	self		assert: [ :html | html anchor url: url; with: url ]		gives: '<a href="' , string , '">' , string , '</a>'!

testTargetBlank	self		assert: [ :html | 			html anchor				callback: [  ];				targetBlank;				with: 'foo' ]		gives: '<a target="_blank" href="/?1">foo</a>'!

testTargetParent	self		assert: [ :html | 			html anchor				callback: [  ];				targetParent;				with: 'foo' ]		gives: '<a target="_parent" href="/?1">foo</a>'!

testTargetSelf	self		assert: [ :html | 			html anchor				callback: [  ];				targetSelf;				with: 'foo' ]		gives: '<a target="_self" href="/?1">foo</a>'!

testTargetTop	self		assert: [ :html | 			html anchor				callback: [  ];				targetTop;				with: 'foo' ]		gives: '<a target="_top" href="/?1">foo</a>'! !
!WAAnchorTagTest categoriesFor: #testAnchor!public!tests/tags/anchors! !
!WAAnchorTagTest categoriesFor: #testAnchorAttributes!public!tests/tags/anchors! !
!WAAnchorTagTest categoriesFor: #testAnchorCallback!public!tests/tags/anchors! !
!WAAnchorTagTest categoriesFor: #testAnchorUrl!public!tests/tags/anchors! !
!WAAnchorTagTest categoriesFor: #testTargetBlank!public!tests! !
!WAAnchorTagTest categoriesFor: #testTargetParent!public!tests! !
!WAAnchorTagTest categoriesFor: #testTargetSelf!public!tests! !
!WAAnchorTagTest categoriesFor: #testTargetTop!public!tests! !


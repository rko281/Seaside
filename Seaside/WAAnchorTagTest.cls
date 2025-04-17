"Filed out from Dolphin Smalltalk"!

WAAbstractCanvasBrushTest subclass: #WAAnchorTagTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAnchorTagTest guid: (GUID fromString: '{0e52c0a4-651e-4387-b7cf-61bfc5214b19}')!

WAAnchorTagTest comment: ''!

!WAAnchorTagTest categoriesForClass!Brushes! !

!WAAnchorTagTest methodsFor!

testAnchor	self		assert: [ :html | html anchor ]		gives: '<a></a>'.	self		assert: [ :html | html anchor callback: [ ]; with: 'foo' ]		gives: '<a href="/?1">foo</a>'.	self		assert: [ :html |			html anchor callback: [ ]; with: 'foo'.			html anchor callback: [ ]; with: 'bar' ]		gives: '<a href="/?1">foo</a><a href="/?2">bar</a>'.	self		assert: [ :html |			html anchor				extraPath: 'zork';				callback: [ ];				with: 'foo' ]		gives: '<a href="/zork?1">foo</a>'.	self		assert: [ :html |			html anchor				extraParameters: 'zork';				callback: [ ];				with: 'foo' ]		gives: '<a href="/?zork&amp;1">foo</a>'!

testAnchorAttributes	self		assert: [ :html | html anchor charset: 'utf-8' ]		gives: '<a charset="utf-8"></a>'.	self		assert: [ :html | html anchor name: 'foo' ]		gives: '<a name="foo"></a>'.	self		assert: [ :html | html anchor relationship: 'home' ]		gives: '<a rel="home"></a>'.	self		assert: [ :html | html anchor relationship: 'home'; relationship: 'parent' ]		gives: '<a rel="home parent"></a>'.	self		assert: [ :html | html anchor reverse: 'home' ]		gives: '<a rev="home"></a>'.	self		assert: [ :html | html anchor reverse: 'home'; reverse: 'parent' ]		gives: '<a rev="home parent"></a>'.	self		assert: [ :html | html anchor target: '_new' ]		gives: '<a target="_new"></a>'.	self		assert: [ :html | html anchor type: 'text/plain' ]		gives: '<a type="text/plain"></a>'!

testAnchorCallback	self		assert: [ :html | html anchor callback: [ ] ]		gives: '<a href="/?1"></a>'.			self		assert: [ :html | 			self 				should: [ html anchor callback: [ :value | ] ]				raise: Error ]		gives: '<a></a>'!

testAnchorUrl	| url string |	url := WAUrl new.	url		host: 'www.seaside.st';		addToPath: 'foo bar&zork<blah';		addField: '1' value: nil;		addField: '2' value: 123;		addField: '3' value: 'foo bar&zork'.	string := 'http://www.seaside.st/foo%20bar%26zork%3Cblah?1&amp;2=123&amp;3=foo%20bar%26zork'.	self		assert: [ :html | html anchor url: url; with: url ]		gives: '<a href="' , string , '">' , string , '</a>'!

testTargetBlank	self		assert: [ :html | 			html anchor				callback: [  ];				targetBlank;				with: 'foo' ]		gives: '<a target="_blank" href="/?1">foo</a>'!

testTargetParent	self		assert: [ :html | 			html anchor				callback: [  ];				targetParent;				with: 'foo' ]		gives: '<a target="_parent" href="/?1">foo</a>'!

testTargetSelf	self		assert: [ :html | 			html anchor				callback: [  ];				targetSelf;				with: 'foo' ]		gives: '<a target="_self" href="/?1">foo</a>'!

testTargetTop	self		assert: [ :html | 			html anchor				callback: [  ];				targetTop;				with: 'foo' ]		gives: '<a target="_top" href="/?1">foo</a>'! !

!WAAnchorTagTest categoriesForMethods!
testAnchor!public!tests/tags/anchors! !
testAnchorAttributes!public!tests/tags/anchors! !
testAnchorCallback!public!tests/tags/anchors! !
testAnchorUrl!public!tests/tags/anchors! !
testTargetBlank!public!tests! !
testTargetParent!public!tests! !
testTargetSelf!public!tests! !
testTargetTop!public!tests! !
!


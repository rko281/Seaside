"Filed out from Dolphin Smalltalk"!

JSObjectTest subclass: #JSRenderingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSRenderingTest guid: (GUID fromString: '{7de573ee-ad51-4d1b-aa3e-d2be596fd555}')!

JSRenderingTest comment: ''!

!JSRenderingTest categoriesForClass!Javascript-Tests-Core! !

!JSRenderingTest methodsFor!

testAddToEvent	self 		assert: [ :html | html div onClick: self mock ]		renders: '<div onclick="mock"></div>'.	self 		assert: [ :html | html div onMouseOut: self mock ]		renders: '<div onmouseout="mock"></div>'.	self 		assert: [ :html | html div onKeyUp: self mock ]		renders: '<div onkeyup="mock"></div>'!

testAddToScript	self 		assert: [ :html | html script: self mock ]		renders: '<script type="text/javascript">mock</script>'!

testJavascript	self 		assert: [ :html | html div onClick: (html javascript add: self mock; add: self mock; yourself) ]		renders: '<div onclick="mock;mock"></div>'!

testLogger	self 		assert: [ :html | html div onClick: (html logger log: 'Foo') ]		renders: '<div onclick="console.log(&quot;Foo&quot;)"></div>'!

testPassenger	self 		assert: [ :html | html div passenger: self ]		renders: '<div id="id1"></div>'.	self 		assert: [ :html | 			html div passenger: self.			html div passenger: self class ]		renders: '<div id="id1"></div><div id="id2"></div>'!

testRenderOn	self 		assert: [ :html | html html: (html javascript render: 123) ]		renders: '123'.	self 		assert: [ :html | html html: (html javascript render: 'abc') ]		renders: 'abc'.	self 		assert: [ :html | html html: (html javascript render: [ :h | h div ]) ]		renders: '<div></div>'!

testScript	self 		assert: [ :html | html div script: self mock ]		renders: '<div></div><script type="text/javascript">mock;</script>'!

testScriptOn	self 		assert: [ :html | html html: (html javascript script: [ :s | ]) ]		renders: ''.	self 		assert: [ :html | html html: (html javascript script: [ :s | s add: self mock ]) ]		renders: 'mock'.	self 		assert: [ :html | html html: (html javascript script: [ :s | s add: self mock; add: self mock ]) ]		renders: 'mock;mock'! !

!JSRenderingTest categoriesForMethods!
testAddToEvent!public!tests! !
testAddToScript!public!tests! !
testJavascript!public!tests! !
testLogger!public!tests! !
testPassenger!public!tests! !
testRenderOn!public!tests! !
testScript!public!tests! !
testScriptOn!public!tests! !
!


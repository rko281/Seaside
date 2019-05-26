"Filed out from Dolphin Smalltalk 7"!

WAScriptGeneratorTest subclass: #WADefaultScriptGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADefaultScriptGeneratorTest guid: (GUID fromString: '{b692fb75-afee-4dd6-8e83-3c23b8e6a8f5}')!
WADefaultScriptGeneratorTest comment: ''!
!WADefaultScriptGeneratorTest categoriesForClass!Seaside-Tests-Canvas! !
!WADefaultScriptGeneratorTest methodsFor!

scriptGeneratorClass	^ WADefaultScriptGenerator!

testEmpty	self		assert: [ :html | ]		gives: '<html><head><title></title></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'!

testEvent	self		assert: [ :html |				html					anchor					onClick: 'console.log("clicked")';					with: 'click' ]		gives: '<html><head><title></title></head><body onload="onLoad()"><a onclick="console.log(&quot;clicked&quot;)">click</a><script type="text/javascript">function onLoad(){};</script></body></html>'!

testLoadScript	self		assert: [ :html | html document addLoadScript: (WAStubJsObject on: 'console.log("loaded")') ]		gives: '<html><head><title></title></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){console.log("loaded");};</script></body></html>'! !
!WADefaultScriptGeneratorTest categoriesFor: #scriptGeneratorClass!configuration!public! !
!WADefaultScriptGeneratorTest categoriesFor: #testEmpty!public!testing! !
!WADefaultScriptGeneratorTest categoriesFor: #testEvent!public!testing! !
!WADefaultScriptGeneratorTest categoriesFor: #testLoadScript!public!testing! !


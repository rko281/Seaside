"Filed out from Dolphin Smalltalk"!

WAScriptGeneratorTest subclass: #WADefaultScriptGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADefaultScriptGeneratorTest guid: (GUID fromString: '{e4cc7d47-4811-429f-babc-44a004f6e327}')!

WADefaultScriptGeneratorTest comment: ''!

!WADefaultScriptGeneratorTest categoriesForClass!Seaside-Tests-Canvas-Base! !

!WADefaultScriptGeneratorTest methodsFor!

createHandlers	^ Array with: WARequestHandler new!

scriptGeneratorClass	^ WADefaultScriptGenerator!

testEmpty	self		assert: [ :html | ]		gives: '<html><head><title></title></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'!

testEvent	self		assert: [ :html |				html					anchor					onClick: 'console.log("clicked")';					with: 'click' ]		gives: '<html><head><title></title></head><body onload="onLoad()"><a onclick="console.log(&quot;clicked&quot;)">click</a><script type="text/javascript">function onLoad(){};</script></body></html>'!

testLoadScript	self		assert: [ :html | html document addLoadScript: (WAStubJsObject on: 'console.log("loaded")') ]		gives: '<html><head><title></title></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){console.log("loaded");};</script></body></html>'!

testNestedScripts	self		assert: [ :html |			html anchor script:				((html jQuery this closest: 'div') append: [ :r |					 r div script: (html jQuery this							  on: 'click'							  selector: '.class'							  do: (JSStream on: 'alert(''nested script''')) ]) ]		gives: '<html><head><title></title></head><body onload="onLoad()"><a id="id1"></a><script type="text/javascript">function onLoad(){$("#id1").closest("div").append("<div id=\"id2\"></div>\x3Cscript type=\"text/javascript\">$(\"#id2\").on(\"click\",\".class\",function(){alert(''nested script''});\x3C/script>");};</script></body></html>'!

testScripts	"https://html.spec.whatwg.org/#restrictions-for-contents-of-script-elements	"	self		assert: [ :html |         html            script: (html logger log: '<!!-- <script></script>');            paragraph: 'Test Paragraph' ]		gives: '<html><head><title></title></head><body onload="onLoad()"><script type="text/javascript">console.log("\x3C!!-- \x3Cscript>\x3C/script>")</script><p>Test Paragraph</p><script type="text/javascript">function onLoad(){};</script></body></html>'! !

!WADefaultScriptGeneratorTest categoriesForMethods!
createHandlers!configuration!public! !
scriptGeneratorClass!configuration!public! !
testEmpty!public!testing! !
testEvent!public!testing! !
testLoadScript!public!testing! !
testNestedScripts!public!testing! !
testScripts!public!testing! !
!


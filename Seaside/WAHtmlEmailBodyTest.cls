"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAHtmlEmailBodyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtmlEmailBodyTest guid: (GUID fromString: '{d88dfa95-4dd9-45a5-8ecc-cec4164a467e}')!

WAHtmlEmailBodyTest comment: ''!

!WAHtmlEmailBodyTest categoriesForClass!Seaside-Tests-Email! !

!WAHtmlEmailBodyTest methodsFor!

testBasics	| body |	body := WAHtmlEmailBody		renderingBlock: [ :h | 			h anchor				url: 'http://www.google.com';				with: 'hello' ].	self assert: body isHtml.	self assert: body contentString equals: '<html><head><title></title></head><body onload="onLoad()"><a href="http://www.google.com">hello</a><script type="text/javascript">function onLoad(){};</script></body></html>'.	self assert: body contentType equals:WAMimeType textHtml! !

!WAHtmlEmailBodyTest categoriesForMethods!
testBasics!public!testing! !
!


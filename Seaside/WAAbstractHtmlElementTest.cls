"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAAbstractHtmlElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAbstractHtmlElementTest guid: (GUID fromString: '{f8569c0a-5ae1-45b3-a1d3-90bd4a8555e2}')!

WAAbstractHtmlElementTest comment: ''!

!WAAbstractHtmlElementTest categoriesForClass!Seaside-Tests-Core-Document! !

!WAAbstractHtmlElementTest methodsFor!

assert: aBlock gives: aString	| html |	html := String streamContents: [ :stream |		| context root document |		document := WAHtmlDocument on: stream.		context := WARenderContext new			actionUrl: WAUrl new;			document: document;			yourself.		 root := WAHtmlRoot context: context.		 aBlock value: root.		document open: root.		document close ].	self		assert: html = ('<html><head><title></title>', aString, '</head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>')		description:	'Expected: ' , aString printString , ', Actual: ' , html printString		resumable: true! !

!WAAbstractHtmlElementTest categoriesForMethods!
assert:gives:!private! !
!

!WAAbstractHtmlElementTest class methodsFor!

isAbstract	^ self name = #WAAbstractHtmlElementTest! !

!WAAbstractHtmlElementTest class categoriesForMethods!
isAbstract!public!testing! !
!


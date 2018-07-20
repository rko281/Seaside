"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #JSObjectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSObjectTest guid: (GUID fromString: '{7781d4d4-eff2-41c7-b10e-434513e84e47}')!
JSObjectTest comment: ''!
!JSObjectTest categoriesForClass!Javascript-Tests-Core! !
!JSObjectTest methodsFor!

assert: anObject equals: aString	self		assert: anObject asJavascript = aString		description: anObject asJavascript printString , ' expected to be ' , aString printString		resumable: true!

assert: aBlock renders: aString 	| html |	html := WAHtmlCanvas builder		documentClass: WAHtmlDocument;		rootClass: WAHtmlRoot;		fullDocument: false;		render: aBlock.	self 		assert: html = aString		description: 'Got ' , html printString , '; but expected ' , aString printString!

javascript	^ JSScript context: self renderContext!

mock	^ JSStream on: 'mock'!

renderContext	^ WARenderContext new		actionUrl: (WAUrl absolute: 'http://www.seaside.st/?_s=1&_k=a');		document: (WAHtmlDocument 			on: (WriteStream on: String new)			codec: self requestContext codec);		yourself!

stream	^ JSStream new! !
!JSObjectTest categoriesFor: #assert:equals:!asserting!public! !
!JSObjectTest categoriesFor: #assert:renders:!public!utilities! !
!JSObjectTest categoriesFor: #javascript!accessing/javascript!public! !
!JSObjectTest categoriesFor: #mock!accessing/javascript!public! !
!JSObjectTest categoriesFor: #renderContext!accessing!public! !
!JSObjectTest categoriesFor: #stream!accessing/javascript!public! !

!JSObjectTest class methodsFor!

isAbstract	^ self name = #JSObjectTest!

packageNamesUnderTest	^ #('Javascript-Core')!

shouldInheritSelectors	^ true! !
!JSObjectTest class categoriesFor: #isAbstract!public!testing! !
!JSObjectTest class categoriesFor: #packageNamesUnderTest!accessing!public! !
!JSObjectTest class categoriesFor: #shouldInheritSelectors!public!testing! !


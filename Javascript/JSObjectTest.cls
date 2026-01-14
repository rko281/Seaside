"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #JSObjectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSObjectTest guid: (GUID fromString: '{0d11ccb9-2160-4898-a172-e904d633562c}')!

JSObjectTest comment: ''!

!JSObjectTest categoriesForClass!Javascript-Tests-Core! !

!JSObjectTest methodsFor!

assert: anObject equals: aString	self		assert: anObject asJavascript = aString		description: anObject asJavascript printString , ' expected to be ' , aString printString		resumable: true!

assert: aBlock renders: aString 	| html |	html := WAHtmlCanvas builder		documentClass: WAHtmlDocument;		rootClass: WAHtmlRoot;		fullDocument: false;		render: aBlock.	self 		assert: html = aString		description: 'Got ' , html printString , '; but expected ' , aString printString!

createHandlers	^ Array with: WARequestHandler new!

javascript	^ JSScript context: self renderContext!

mock	^ JSStream on: 'mock'!

renderContext	^ WARenderContext new		actionUrl: (WAUrl absolute: 'http://www.seaside.st/?_s=1&_k=a');		document: (WAHtmlDocument 			on: (WriteStream on: String new)			codec: self requestContext codec);		yourself!

stream	^ JSStream new! !

!JSObjectTest categoriesForMethods!
assert:equals:!asserting!public! !
assert:renders:!public!utilities! !
createHandlers!configuration!public! !
javascript!accessing/javascript!public! !
mock!accessing/javascript!public! !
renderContext!accessing!public! !
stream!accessing/javascript!public! !
!

!JSObjectTest class methodsFor!

isAbstract	^ self name = #JSObjectTest!

packageNamesUnderTest	^ #('Javascript-Core')!

shouldInheritSelectors	^ true! !

!JSObjectTest class categoriesForMethods!
isAbstract!public!testing! !
packageNamesUnderTest!accessing!public! !
shouldInheritSelectors!public!testing! !
!


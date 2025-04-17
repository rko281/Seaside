"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAXmlCanvasTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAXmlCanvasTest guid: (GUID fromString: '{6cff8698-5c12-4f83-83ec-27a2467d5971}')!

WAXmlCanvasTest comment: ''!

!WAXmlCanvasTest categoriesForClass!Base! !

!WAXmlCanvasTest methodsFor!

assert: aBlock gives: aString	| xml |	xml := WAXmlCanvas builder		render: aBlock.	self assert: aString equals: xml!

testBasic	self		assert: [ :xml |        xml            tag: 'the-tag'            with: 'the-content' ]		gives: '<the-tag>the-content</the-tag>'! !

!WAXmlCanvasTest categoriesForMethods!
assert:gives:!private! !
testBasic!public!tests! !
!


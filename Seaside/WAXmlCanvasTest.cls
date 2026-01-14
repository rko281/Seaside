"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAXmlCanvasTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAXmlCanvasTest guid: (GUID fromString: '{bb6fd5f7-8f3e-41c1-949c-d50d632dafc5}')!

WAXmlCanvasTest comment: ''!

!WAXmlCanvasTest categoriesForClass!Seaside-Tests-Canvas-Base! !

!WAXmlCanvasTest methodsFor!

assert: aBlock gives: aString	| xml |	xml := WAXmlCanvas builder		render: aBlock.	self assert: aString equals: xml!

testBasic	self		assert: [ :xml |        xml            tag: 'the-tag'            with: 'the-content' ]		gives: '<the-tag>the-content</the-tag>'! !

!WAXmlCanvasTest categoriesForMethods!
assert:gives:!private! !
testBasic!public!tests! !
!


"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WAXmlCanvasTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAXmlCanvasTest guid: (GUID fromString: '{ab2691d7-69a9-4852-9904-97b4adb0dc02}')!
WAXmlCanvasTest comment: ''!
!WAXmlCanvasTest categoriesForClass!Seaside-Tests-Canvas! !
!WAXmlCanvasTest methodsFor!

assert: aBlock gives: aString	| xml |	xml := WAXmlCanvas builder		render: aBlock.	self assert: aString = xml!

testBasic	self		assert: [ :xml |        xml            tag: 'the-tag'            with: 'the-content' ]		gives: '<the-tag>the-content</the-tag>'! !
!WAXmlCanvasTest categoriesFor: #assert:gives:!private! !
!WAXmlCanvasTest categoriesFor: #testBasic!public!tests! !


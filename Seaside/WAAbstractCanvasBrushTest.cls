"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WAAbstractCanvasBrushTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAbstractCanvasBrushTest guid: (GUID fromString: '{12ad908f-3e05-4450-b3e8-ba084f29f94e}')!
WAAbstractCanvasBrushTest comment: ''!
!WAAbstractCanvasBrushTest categoriesForClass!Seaside-Tests-Canvas! !
!WAAbstractCanvasBrushTest methodsFor!

assert: aBlock gives: aString	| html |	html := self builder		render: aBlock.	self		assert: html = aString		description:	 'Expected: ', aString printString, ', Actual: ', html printString		resumable: true!

builder	^ WAHtmlCanvas builder! !
!WAAbstractCanvasBrushTest categoriesFor: #assert:gives:!private! !
!WAAbstractCanvasBrushTest categoriesFor: #builder!private! !

!WAAbstractCanvasBrushTest class methodsFor!

isAbstract	^ self name = #WAAbstractCanvasBrushTest!

packageNamesUnderTest	^ #('Seaside-Canvas')! !
!WAAbstractCanvasBrushTest class categoriesFor: #isAbstract!public!testing! !
!WAAbstractCanvasBrushTest class categoriesFor: #packageNamesUnderTest!accessing!public! !


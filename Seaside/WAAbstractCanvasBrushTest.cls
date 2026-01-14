"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAAbstractCanvasBrushTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAbstractCanvasBrushTest guid: (GUID fromString: '{2aa6c08d-016e-4096-9d16-26331811ba62}')!

WAAbstractCanvasBrushTest comment: ''!

!WAAbstractCanvasBrushTest categoriesForClass!Seaside-Tests-Canvas-Brushes! !

!WAAbstractCanvasBrushTest methodsFor!

assert: aBlock gives: aString	| html |	html := self builder		render: aBlock.	self		assert: html = aString		description:	 'Expected: ', aString printString, ', Actual: ', html printString		resumable: true!

builder	^ WAHtmlCanvas builder! !

!WAAbstractCanvasBrushTest categoriesForMethods!
assert:gives:!private! !
builder!private! !
!

!WAAbstractCanvasBrushTest class methodsFor!

isAbstract	^ self name = #WAAbstractCanvasBrushTest!

packageNamesUnderTest	^ #('Seaside-Canvas')! !

!WAAbstractCanvasBrushTest class categoriesForMethods!
isAbstract!public!testing! !
packageNamesUnderTest!accessing!public! !
!


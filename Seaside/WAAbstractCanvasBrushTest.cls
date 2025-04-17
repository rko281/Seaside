"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAAbstractCanvasBrushTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAbstractCanvasBrushTest guid: (GUID fromString: '{6585ea30-29c8-4de1-9f65-6e6c243c0f78}')!

WAAbstractCanvasBrushTest comment: ''!

!WAAbstractCanvasBrushTest categoriesForClass!Brushes! !

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


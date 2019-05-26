"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WABrush
	instanceVariableNames: 'canvas parent closed'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABrush guid: (GUID fromString: '{9430da16-4164-4850-a28a-b1dd771a76de}')!
WABrush comment: 'I represent a brush to be used on a *WACanvas*.Instance Variables	canvas:		The canvas instance I am used with.	parent:		The parent brush I am used within.	closed:		Wether I have been closed/flushed yet.'!
!WABrush categoriesForClass!Seaside-Canvas-Base! !
!WABrush methodsFor!

close	"Close and flush the receiver onto the canvas and its associated document."	closed ifFalse: [ self with: nil ]!

initialize	super initialize.	closed := false!

labelForSelector: aSymbol of: anObject	^ anObject labelForSelector: aSymbol!

parent	^ parent!

setParent: aBrush canvas: aCanvas	parent := aBrush.	canvas := aCanvas!

with: aBlock	canvas nest: aBlock.	closed := true! !
!WABrush categoriesFor: #close!public! !
!WABrush categoriesFor: #initialize!initialization!public! !
!WABrush categoriesFor: #labelForSelector:of:!private! !
!WABrush categoriesFor: #parent!accessing!public! !
!WABrush categoriesFor: #setParent:canvas:!initialization!public! !
!WABrush categoriesFor: #with:!public! !


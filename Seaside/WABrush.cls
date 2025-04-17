"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WABrush
	instanceVariableNames: 'canvas parent closed'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABrush guid: (GUID fromString: '{6ba8026c-1a32-4172-a893-f80aeb00923e}')!

WABrush comment: 'I represent a brush to be used on a *WACanvas*.Instance Variables	canvas:		The canvas instance I am used with.	parent:		The parent brush I am used within.	closed:		Wether I have been closed/flushed yet.'!

!WABrush categoriesForClass!Base! !

!WABrush methodsFor!

close	"Close and flush the receiver onto the canvas and its associated document."	closed ifFalse: [ self with: nil ]!

initialize	super initialize.	closed := false!

labelForSelector: aSymbol of: anObject	^ anObject labelForSelector: aSymbol!

parent	^ parent!

setParent: aBrush canvas: aCanvas	parent := aBrush.	canvas := aCanvas!

with: aBlock	canvas nest: aBlock.	closed := true! !

!WABrush categoriesForMethods!
close!public! !
initialize!initialization!public! !
labelForSelector:of:!private! !
parent!accessing!public! !
setParent:canvas:!initialization!public! !
with:!public! !
!

!WABrush class methodsFor!

isAbstract 	^ self == WABrush! !

!WABrush class categoriesForMethods!
isAbstract!public!testing! !
!


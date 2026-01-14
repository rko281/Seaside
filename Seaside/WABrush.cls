"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WABrush
	instanceVariableNames: 'canvas parent closed'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABrush guid: (GUID fromString: '{253c421d-926e-430e-be84-0cb40d4f4331}')!

WABrush comment: 'I represent a brush to be used on a *WACanvas*.Instance Variables	canvas:		The canvas instance I am used with.	parent:		The parent brush I am used within.	closed:		Wether I have been closed/flushed yet.'!

!WABrush categoriesForClass!Seaside-Canvas-Base! !

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


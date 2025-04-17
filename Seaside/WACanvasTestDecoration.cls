"Filed out from Dolphin Smalltalk"!

WADecoration subclass: #WACanvasTestDecoration
	instanceVariableNames: 'tagName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACanvasTestDecoration guid: (GUID fromString: '{9a24381b-1da5-470e-b78f-76e47f9950d6}')!

WACanvasTestDecoration comment: ''!

!WACanvasTestDecoration categoriesForClass!Unclassified! !

!WACanvasTestDecoration methodsFor!

initialize 	super initialize.	tagName := 'div'!

renderContentOn: html	(html tag: self tagName) with: [ self renderNextOn: html ]!

tagName	^ tagName!

tagName: anObject	tagName := anObject! !

!WACanvasTestDecoration categoriesForMethods!
initialize!initialization!public! !
renderContentOn:!accessing!public! !
tagName!accessing!public! !
tagName:!accessing!public! !
!

!WACanvasTestDecoration class methodsFor!

rendererClass	"Make sure we use WAHtmlCanvas even if a different renderer is default."	^ WAHtmlCanvas!

tagName: aString	^self new 		tagName: aString;		yourself! !

!WACanvasTestDecoration class categoriesForMethods!
rendererClass!public!rendering! !
tagName:!accessing!public! !
!


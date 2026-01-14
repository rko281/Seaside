"Filed out from Dolphin Smalltalk"!

WADecoration subclass: #WACanvasTestDecoration
	instanceVariableNames: 'tagName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACanvasTestDecoration guid: (GUID fromString: '{6ee6d214-815a-4d08-98fa-07dae4f49edc}')!

WACanvasTestDecoration comment: ''!

!WACanvasTestDecoration categoriesForClass!Seaside-Tests-RenderLoop! !

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


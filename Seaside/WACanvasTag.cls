"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WACanvasTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACanvasTag guid: (GUID fromString: '{c3f464d5-73c7-4247-a08f-d2cb4b9d04b0}')!

WACanvasTag comment: 'supported on:- Firefox 1.5- Safari 2- Opera 9http://www.whatwg.org/specs/web-apps/current-work/#the-canvashttp://developer.mozilla.org/en/docs/Canvas_tutorial'!

!WACanvasTag categoriesForClass!Tags! !

!WACanvasTag methodsFor!

extent: aPoint	self width: aPoint x; height: aPoint y!

height: aNumber 	self 		attributeAt: 'height'		put: aNumber greaseString!

tag	^ 'canvas'!

width: aNumber 	self 		attributeAt: 'width'		put: aNumber greaseString! !

!WACanvasTag categoriesForMethods!
extent:!attributes!public! !
height:!attributes!public! !
tag!accessing!public! !
width:!attributes!public! !
!


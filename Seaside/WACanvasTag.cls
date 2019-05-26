"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WACanvasTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACanvasTag guid: (GUID fromString: '{1bf188dc-1834-4548-bcdd-ac2444093af0}')!
WACanvasTag comment: 'supported on:- Firefox 1.5- Safari 2- Opera 9http://www.whatwg.org/specs/web-apps/current-work/#the-canvashttp://developer.mozilla.org/en/docs/Canvas_tutorial'!
!WACanvasTag categoriesForClass!Seaside-Canvas-Tags! !
!WACanvasTag methodsFor!

extent: aPoint	self width: aPoint x; height: aPoint y!

height: aNumber 	self 		attributeAt: 'height'		put: aNumber greaseString!

tag	^ 'canvas'!

width: aNumber 	self 		attributeAt: 'width'		put: aNumber greaseString! !
!WACanvasTag categoriesFor: #extent:!attributes!public! !
!WACanvasTag categoriesFor: #height:!attributes!public! !
!WACanvasTag categoriesFor: #tag!accessing!public! !
!WACanvasTag categoriesFor: #width:!attributes!public! !


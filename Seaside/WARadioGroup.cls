﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARadioGroup
	instanceVariableNames: 'canvas key values selected'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARadioGroup guid: (GUID fromString: '{ef5db84b-4833-43c5-84fe-f20067aa2b29}')!
WARadioGroup comment: 'A WARadioGroup is a container for several related radio buttons. It must be used to create radio buttons.
!WARadioGroup categoriesForClass!Seaside-Canvas! !
!WARadioGroup methodsFor!

callback: aBlock

callbackValue: anObject

hasCallback

hasSelection

initializeWithCanvas: aRenderCanvas

isSelected: anObject

key

radioButton

selected: anObject

valuesAt: aKey put: anObject

with: aBlock
!WARadioGroup categoriesFor: #callback:!private! !
!WARadioGroup categoriesFor: #callbackValue:!private! !
!WARadioGroup categoriesFor: #hasCallback!private! !
!WARadioGroup categoriesFor: #hasSelection!public!testing! !
!WARadioGroup categoriesFor: #initializeWithCanvas:!initialization!public! !
!WARadioGroup categoriesFor: #isSelected:!public!testing! !
!WARadioGroup categoriesFor: #key!accessing!public! !
!WARadioGroup categoriesFor: #radioButton!public!public api! !
!WARadioGroup categoriesFor: #selected:!accessing!public! !
!WARadioGroup categoriesFor: #valuesAt:put:!private! !
!WARadioGroup categoriesFor: #with:!public!public api! !

!WARadioGroup class methodsFor!

canvas: aRenderCanvas
!WARadioGroup class categoriesFor: #canvas:!accessing!public! !

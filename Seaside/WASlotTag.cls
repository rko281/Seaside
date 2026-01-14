"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WASlotTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASlotTag guid: (GUID fromString: '{440e38cd-71a7-4b2d-8c49-a53a0abe12fd}')!

WASlotTag comment: 'The slot HTML element—part of the Web Components technology suite—is a placeholder inside a web component that you can fill with your own markup, which lets you create separate DOM trees and present them together.'!

!WASlotTag categoriesForClass!Seaside-Canvas-Tags! !

!WASlotTag methodsFor!

name: aSring	"The slot's name."	self attributeAt: 'name' put: aSring!

tag	^ 'slot'! !

!WASlotTag categoriesForMethods!
name:!attributes!public! !
tag!accessing!public! !
!


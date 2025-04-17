"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WASlotTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASlotTag guid: (GUID fromString: '{1ac6e170-8b43-459f-9557-dfbab815d864}')!

WASlotTag comment: 'The slot HTML element—part of the Web Components technology suite—is a placeholder inside a web component that you can fill with your own markup, which lets you create separate DOM trees and present them together.'!

!WASlotTag categoriesForClass!Tags! !

!WASlotTag methodsFor!

name: aSring	"The slot's name."	self attributeAt: 'name' put: aSring!

tag	^ 'slot'! !

!WASlotTag categoriesForMethods!
name:!attributes!public! !
tag!accessing!public! !
!


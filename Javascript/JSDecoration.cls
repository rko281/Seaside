"Filed out from Dolphin Smalltalk"!

WAObject subclass: #JSDecoration
	instanceVariableNames: 'owner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSDecoration guid: (GUID fromString: '{58fca328-1a69-4877-a6c7-58f782ee58de}')!

JSDecoration comment: 'I decorate JavaScript objects.'!

!JSDecoration categoriesForClass!Decorations! !

!JSDecoration methodsFor!

isJavascript	^ true!

javascriptContentOn: aStream	self owner javascriptContentOn: aStream!

owner	^ owner!

renderContext	^ owner renderContext!

setOwner: anObject	owner := anObject! !

!JSDecoration categoriesForMethods!
isJavascript!public!testing! !
javascriptContentOn:!printing!public! !
owner!accessing!public! !
renderContext!accessing!public! !
setOwner:!initialization!public! !
!


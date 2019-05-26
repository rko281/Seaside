"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #JSDecoration
	instanceVariableNames: 'owner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSDecoration guid: (GUID fromString: '{38ca558c-3e86-44b3-9245-94caf01cf3a1}')!
JSDecoration comment: 'I decorate JavaScript objects.'!
!JSDecoration categoriesForClass!Javascript-Core-Decorations! !
!JSDecoration methodsFor!

isJavascript	^ true!

javascriptContentOn: aStream	self owner javascriptContentOn: aStream!

owner	^ owner!

renderContext	^ owner renderContext!

setOwner: anObject	owner := anObject! !
!JSDecoration categoriesFor: #isJavascript!public!testing! !
!JSDecoration categoriesFor: #javascriptContentOn:!printing!public! !
!JSDecoration categoriesFor: #owner!accessing!public! !
!JSDecoration categoriesFor: #renderContext!accessing!public! !
!JSDecoration categoriesFor: #setOwner:!initialization!public! !


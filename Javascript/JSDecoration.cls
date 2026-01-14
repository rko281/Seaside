"Filed out from Dolphin Smalltalk"!

WAObject subclass: #JSDecoration
	instanceVariableNames: 'owner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSDecoration guid: (GUID fromString: '{ddcbb884-c80f-4ddb-811d-0ead94b3b7d8}')!

JSDecoration comment: 'I decorate JavaScript objects.'!

!JSDecoration categoriesForClass!Javascript-Core-Decorations! !

!JSDecoration methodsFor!

isJavascript	^ true!

javascriptContentOn: aRenderer	self owner javascriptContentOn: aRenderer!

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


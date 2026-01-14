"Filed out from Dolphin Smalltalk"!

JSMember subclass: #JSProperty
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSProperty guid: (GUID fromString: '{fac78fe6-d574-4b52-91b5-94cf8f42b64b}')!

JSProperty comment: 'I access a property of the decorated object.'!

!JSProperty categoriesForClass!Javascript-Core-Decorations! !

!JSProperty methodsFor!

javascriptContentOn: aRenderer	super javascriptContentOn: aRenderer.	aRenderer bracketProperty: self name! !

!JSProperty categoriesForMethods!
javascriptContentOn:!printing!public! !
!


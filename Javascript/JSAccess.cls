"Filed out from Dolphin Smalltalk"!

JSMember subclass: #JSAccess
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSAccess guid: (GUID fromString: '{cacf24c1-4af0-48fb-b470-61008a7cbe97}')!

JSAccess comment: 'I access a member of the decorated object.'!

!JSAccess categoriesForClass!Javascript-Core-Decorations! !

!JSAccess methodsFor!

javascriptContentOn: aRenderer	super javascriptContentOn: aRenderer.	aRenderer document dotProperty: self name! !

!JSAccess categoriesForMethods!
javascriptContentOn:!printing!public! !
!


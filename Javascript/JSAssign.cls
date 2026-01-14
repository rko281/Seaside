"Filed out from Dolphin Smalltalk"!

JSMember subclass: #JSAssign
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSAssign guid: (GUID fromString: '{47e710f2-d3e0-4f17-ad33-6360e49e7ff4}')!

JSAssign comment: 'I assign the decorated object to a global variable.'!

!JSAssign categoriesForClass!Javascript-Core-Decorations! !

!JSAssign methodsFor!

javascriptContentOn: aRenderer	aRenderer document identifier: self name.	aRenderer assignment: [		super javascriptContentOn: aRenderer ]! !

!JSAssign categoriesForMethods!
javascriptContentOn:!printing!public! !
!


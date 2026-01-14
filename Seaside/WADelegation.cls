"Filed out from Dolphin Smalltalk"!

WADecoration subclass: #WADelegation
	instanceVariableNames: 'delegate'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADelegation guid: (GUID fromString: '{ceed0eb3-2288-4840-b3b2-0d7a00a956f2}')!

WADelegation comment: 'I work as a container to delegate the rendering to another object.'!

!WADelegation categoriesForClass!Seaside-Component-Base! !

!WADelegation methodsFor!

accept: aVisitor	aVisitor visitDelegation: self!

children	^ Array with: self delegate!

delegate	^ delegate!

delegate: aComponent	delegate := aComponent!

isDelegation	^ true!

renderContentOn: html	html render: self delegate! !

!WADelegation categoriesForMethods!
accept:!public!visiting! !
children!hooks!public! !
delegate!accessing!public! !
delegate:!accessing!public! !
isDelegation!public!testing! !
renderContentOn:!public!rendering! !
!


"Filed out from Dolphin Smalltalk"!

WADecoration subclass: #WADelegation
	instanceVariableNames: 'delegate'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADelegation guid: (GUID fromString: '{59a87648-77fb-4b76-9559-cd411667580d}')!

WADelegation comment: 'I work as a container to delegate the rendering to another object.'!

!WADelegation categoriesForClass!Base! !

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


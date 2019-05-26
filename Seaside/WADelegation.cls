"Filed out from Dolphin Smalltalk 7"!

WADecoration subclass: #WADelegation
	instanceVariableNames: 'delegate'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADelegation guid: (GUID fromString: '{1f86a5ae-8986-440f-9ba0-d02d860dd1f5}')!
WADelegation comment: 'I work as a container to delegate the rendering to another object.'!
!WADelegation categoriesForClass!Seaside-Component-Base! !
!WADelegation methodsFor!

accept: aVisitor	aVisitor visitDelegation: self!

children	^ Array with: self delegate!

delegate	^ delegate!

delegate: aComponent	delegate := aComponent!

isDelegation	^ true!

renderContentOn: html	html render: self delegate! !
!WADelegation categoriesFor: #accept:!public!visiting! !
!WADelegation categoriesFor: #children!hooks!public! !
!WADelegation categoriesFor: #delegate!accessing!public! !
!WADelegation categoriesFor: #delegate:!accessing!public! !
!WADelegation categoriesFor: #isDelegation!public!testing! !
!WADelegation categoriesFor: #renderContentOn:!public!rendering! !


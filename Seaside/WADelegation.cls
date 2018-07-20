"Filed out from Dolphin Smalltalk 7"!

WADecoration subclass: #WADelegation
	instanceVariableNames: 'delegate'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADelegation guid: (GUID fromString: '{1d7c3424-f878-42b3-948c-3857e55eba4a}')!
WADelegation comment: ''!
!WADelegation categoriesForClass!Seaside-Component! !
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


"Filed out from Dolphin Smalltalk"!

WADelegationFunctionalTest subclass: #WAFlowDelegationFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFlowDelegationFunctionalTest guid: (GUID fromString: '{6c63815c-106b-401a-b2c7-3a40ab154430}')!

WAFlowDelegationFunctionalTest comment: ''!

!WAFlowDelegationFunctionalTest categoriesForClass!Functional! !

!WAFlowDelegationFunctionalTest methodsFor!

initialize	super initialize.	task := WAFlowDelegationTask new!

renderContentOn: html	html paragraph: 'This test is just like WADelegationFunctionalTest, but it uses Flow/Continuations.'.	super renderContentOn: html! !

!WAFlowDelegationFunctionalTest categoriesForMethods!
initialize!initialization!public! !
renderContentOn:!public!rendering! !
!


"Filed out from Dolphin Smalltalk"!

WADelegationFunctionalTest subclass: #WAFlowDelegationFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFlowDelegationFunctionalTest guid: (GUID fromString: '{508ea984-a853-43ca-8f31-a9b07d3d6c89}')!

WAFlowDelegationFunctionalTest comment: ''!

!WAFlowDelegationFunctionalTest categoriesForClass!Seaside-Tests-Flow-Functional! !

!WAFlowDelegationFunctionalTest methodsFor!

initialize	super initialize.	task := WAFlowDelegationTask new!

renderContentOn: html	html paragraph: 'This test is just like WADelegationFunctionalTest, but it uses Flow/Continuations.'.	super renderContentOn: html! !

!WAFlowDelegationFunctionalTest categoriesForMethods!
initialize!initialization!public! !
renderContentOn:!public!rendering! !
!


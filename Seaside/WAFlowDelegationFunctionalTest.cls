"Filed out from Dolphin Smalltalk 7"!

WADelegationFunctionalTest subclass: #WAFlowDelegationFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFlowDelegationFunctionalTest guid: (GUID fromString: '{260d64dd-e546-4478-9903-784430d60f37}')!
WAFlowDelegationFunctionalTest comment: ''!
!WAFlowDelegationFunctionalTest categoriesForClass!Seaside-Tests-Flow-Functional! !
!WAFlowDelegationFunctionalTest methodsFor!

initialize	super initialize.	task := WAFlowDelegationTask new!

renderContentOn: html	html paragraph: 'This test is just like WADelegationFunctionalTest, but it uses Flow/Continuations.'.	super renderContentOn: html! !
!WAFlowDelegationFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAFlowDelegationFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !


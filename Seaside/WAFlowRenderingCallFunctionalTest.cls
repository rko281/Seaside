"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAFlowRenderingCallFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFlowRenderingCallFunctionalTest guid: (GUID fromString: '{8a7bb59b-e56a-41f6-b75a-6b1edb66ff32}')!

WAFlowRenderingCallFunctionalTest comment: ''!

!WAFlowRenderingCallFunctionalTest categoriesForClass!Functional! !

!WAFlowRenderingCallFunctionalTest methodsFor!

renderContentOn: html	html paragraph: [		html anchor			callback: [ self call: WACallDuringRenderTestComponent new ];			with: 'This link'.		html text: ' will call a Component which attempts to do a #call: in its #renderContentOn: method. This is not allowed and should trigger a descriptive error. With WAWalkbackErrorHandler enabled, the output should explain to the user the likely cause of the problem.' ]! !

!WAFlowRenderingCallFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
!


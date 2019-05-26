"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAFlowRenderingCallFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFlowRenderingCallFunctionalTest guid: (GUID fromString: '{dff4e789-43b4-4753-8d5e-7440ed93c298}')!
WAFlowRenderingCallFunctionalTest comment: ''!
!WAFlowRenderingCallFunctionalTest categoriesForClass!Seaside-Tests-Flow-Functional! !
!WAFlowRenderingCallFunctionalTest methodsFor!

renderContentOn: html	html paragraph: [		html anchor			callback: [ self call: WACallDuringRenderTestComponent new ];			with: 'This link'.		html text: ' will call a Component which attempts to do a #call: in its #renderContentOn: method. This is not allowed and should trigger a descriptive error. With WAWalkbackErrorHandler enabled, the output should explain to the user the likely cause of the problem.' ]! !
!WAFlowRenderingCallFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !


"Filed out from Dolphin Smalltalk"!

WAExceptionFunctionalTest subclass: #WAFlowErrorFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFlowErrorFunctionalTest guid: (GUID fromString: '{162f5faf-b6ab-4f38-99da-e8eb899fa4a4}')!

WAFlowErrorFunctionalTest comment: ''!

!WAFlowErrorFunctionalTest categoriesForClass!Seaside-Tests-Flow-Functional! !

!WAFlowErrorFunctionalTest methodsFor!

renderErrorWithCallOn: html 	html heading: 'Error in a called component'.	html paragraph: 'A message should be displayed. Once you click the button, behaviour should be identical to the Error case above without a call. If not, we may have a problem with continuations holding onto the request context.'.	html anchor		callback: [ self inform: 'Once you close this, an error will be raised.'. self raiseError ];		with: 'Raise error in called component'!

renderPartsOn: html	self renderErrorOn: html.	self renderErrorWithCallOn: html! !

!WAFlowErrorFunctionalTest categoriesForMethods!
renderErrorWithCallOn:!public!rendering! !
renderPartsOn:!public!rendering! !
!


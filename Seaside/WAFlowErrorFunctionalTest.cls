"Filed out from Dolphin Smalltalk 7"!

WAExceptionFunctionalTest subclass: #WAFlowErrorFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFlowErrorFunctionalTest guid: (GUID fromString: '{9508c04c-8b48-42d2-9b6d-63fab2e0fe5d}')!
WAFlowErrorFunctionalTest comment: ''!
!WAFlowErrorFunctionalTest categoriesForClass!Seaside-Tests-Flow-Functional! !
!WAFlowErrorFunctionalTest methodsFor!

renderErrorWithCallOn: html 	html heading: 'Error in a called component'.	html paragraph: 'A message should be displayed. Once you click the button, behaviour should be identical to the Error case above without a call. If not, we may have a problem with continuations holding onto the request context.'.	html anchor		callback: [ self inform: 'Once you close this, an error will be raised.'. self raiseError ];		with: 'Raise error'!

renderPartsOn: html	self renderErrorOn: html.	self renderErrorWithCallOn: html! !
!WAFlowErrorFunctionalTest categoriesFor: #renderErrorWithCallOn:!public!rendering! !
!WAFlowErrorFunctionalTest categoriesFor: #renderPartsOn:!public!rendering! !


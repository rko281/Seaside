"Filed out from Dolphin Smalltalk 7"!

WAExceptionFunctionalTest subclass: #WAFlowErrorFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFlowErrorFunctionalTest guid: (GUID fromString: '{a6b8758b-6c82-4973-adae-11eb0923d54d}')!
WAFlowErrorFunctionalTest comment: ''!
!WAFlowErrorFunctionalTest categoriesForClass!Seaside-Tests-Flow-Functional! !
!WAFlowErrorFunctionalTest methodsFor!

renderErrorWithCallOn: html 	html heading: 'Error in a called component'.	html paragraph: 'A message should be displayed. Once you click the button, behaviour should be identical to the Error case above without a call. If not, we may have a problem with continuations holding onto the request context.'.	html anchor		callback: [ self inform: 'Once you close this, an error will be raised.'. self raiseError ];		with: 'Raise error'!

renderPartsOn: html	self renderErrorOn: html.	self renderErrorWithCallOn: html! !
!WAFlowErrorFunctionalTest categoriesFor: #renderErrorWithCallOn:!public!rendering! !
!WAFlowErrorFunctionalTest categoriesFor: #renderPartsOn:!public!rendering! !


﻿"Filed out from Dolphin Smalltalk"!

WAExceptionFunctionalTest subclass: #WAFlowErrorFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFlowErrorFunctionalTest guid: (GUID fromString: '{aec58d40-2998-4885-bc4c-877ebea19a5c}')!

WAFlowErrorFunctionalTest comment: ''!

!WAFlowErrorFunctionalTest categoriesForClass!Functional! !

!WAFlowErrorFunctionalTest methodsFor!

renderErrorWithCallOn: html 	html heading: 'Error in a called component'.	html paragraph: 'A message should be displayed. Once you click the button, behaviour should be identical to the Error case above without a call. If not, we may have a problem with continuations holding onto the request context.'.	html anchor		callback: [ self inform: 'Once you close this, an error will be raised.'. self raiseError ];		with: 'Raise error in called component'!

renderPartsOn: html	self renderErrorOn: html.	self renderErrorWithCallOn: html! !

!WAFlowErrorFunctionalTest categoriesForMethods!
renderErrorWithCallOn:!public!rendering! !
renderPartsOn:!public!rendering! !
!


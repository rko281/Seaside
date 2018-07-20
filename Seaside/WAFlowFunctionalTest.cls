"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAFlowFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFlowFunctionalTest guid: (GUID fromString: '{4043d5c7-94f1-4ee7-b622-ee716ec619e2}')!
WAFlowFunctionalTest comment: ''!
!WAFlowFunctionalTest categoriesForClass!Seaside-Tests-Flow-Functional! !
!WAFlowFunctionalTest methodsFor!

goAnchors		1 to: 5 do: [ :each | 		| component |		component := WAComponent new.		component addMessage: [ :html | 			html anchor				callback: [ component answer ];				with: each greaseString, ': ', self stackDepth greaseString ] fixCallbackTemps.		self call: component ]!

goButtons	1 to: 5 do: [ :each |		self inform: each greaseString, ': ', self stackDepth greaseString ]!

renderContentOn: html	html paragraph: 'The following two anchors should trigger flows with 5 steps each. The stack should neither grow nor shrink (in GemStone the stack for go buttons will grow and that is expected behavior). Backtracking and spawning of windows should properly work.'.	html paragraph: [		html anchor			callback: [ self goAnchors ];			with: 'go anchors'.		html break.		html anchor			callback: [ self goButtons ];			with: 'go buttons' ]!

stackDepth	^ GRPlatform current stackDepth! !
!WAFlowFunctionalTest categoriesFor: #goAnchors!actions!public! !
!WAFlowFunctionalTest categoriesFor: #goButtons!actions!public! !
!WAFlowFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAFlowFunctionalTest categoriesFor: #stackDepth!private! !


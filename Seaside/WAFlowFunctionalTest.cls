"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAFlowFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFlowFunctionalTest guid: (GUID fromString: '{625642ca-dd68-4cf2-a8dd-a82185d183aa}')!

WAFlowFunctionalTest comment: ''!

!WAFlowFunctionalTest categoriesForClass!Seaside-Tests-Flow-Functional! !

!WAFlowFunctionalTest methodsFor!

goAnchors	##(Pragma ignoreForCoverage).	1 to: 5 do: [ :each | 		| component |		component := WAComponent new.		component addMessage: [ :html | 			html anchor				callback: [ component answer ];				with: each greaseString, ': ', self stackDepth greaseString ].		self call: component ]!

goButtons	##(Pragma ignoreForCoverage).	1 to: 5 do: [ :each |		self inform: each greaseString, ': ', self stackDepth greaseString ]!

renderContentOn: html	html paragraph: 'The following two anchors should trigger flows with 5 steps each. The stack should neither grow nor shrink (in GemStone the stack for go buttons will grow and that is expected behavior). Backtracking and spawning of windows should properly work.'.	html paragraph: [		html anchor			callback: [ self goAnchors ];			with: 'go anchors'.		html break.		html anchor			callback: [ self goButtons ];			with: 'go buttons' ]!

stackDepth	##(Pragma ignoreForCoverage).	^ GRPlatform current stackDepth! !

!WAFlowFunctionalTest categoriesForMethods!
goAnchors!actions!public! !
goButtons!actions!public! !
renderContentOn:!public!rendering! !
stackDepth!private! !
!


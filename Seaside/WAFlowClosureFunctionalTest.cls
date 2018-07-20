"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAFlowClosureFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFlowClosureFunctionalTest guid: (GUID fromString: '{e8592165-33a1-40b2-b3f5-9b89118d04c1}')!
WAFlowClosureFunctionalTest comment: ''!
!WAFlowClosureFunctionalTest categoriesForClass!Seaside-Tests-Flow-Functional! !
!WAFlowClosureFunctionalTest methodsFor!

ensure	[ self go ] ensure: [ self inform: 'ensure' ]!

go	(1 to: 3) do: [ :index | self inform: index ]!

renderContentOn: html	html paragraph: 'The following two anchors should trigger a 3 step flow. Backtracking and spawning of windows should properly work.'.	html paragraph: [		html anchor			callback: [ self go ];			with: 'Go' ].	html paragraph 		style: 'color: red; font-weight: bold';		with: 'WARNING: FOLLOWING SECTION IS FOR DEVELOPERS ONLY'.	html paragraph: [		html text: 'The "Go with ensure" test is '.		html span style: 'color:red; font-weight:bold'; with: 'expected to fail'.		html text: ' right now, as the ensure fires during rendering. The ensure does not survive across continuations at the present time.' ].	html paragraph: [		html anchor			callback: [ self ensure ];			with: 'Go with ensure' ]! !
!WAFlowClosureFunctionalTest categoriesFor: #ensure!actions!public! !
!WAFlowClosureFunctionalTest categoriesFor: #go!actions!public! !
!WAFlowClosureFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !


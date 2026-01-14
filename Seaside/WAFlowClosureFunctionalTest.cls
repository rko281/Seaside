"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAFlowClosureFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFlowClosureFunctionalTest guid: (GUID fromString: '{2f41827f-d374-46cc-b21a-417364776642}')!

WAFlowClosureFunctionalTest comment: ''!

!WAFlowClosureFunctionalTest categoriesForClass!Seaside-Tests-Flow-Functional! !

!WAFlowClosureFunctionalTest methodsFor!

ensure	[ self go ] ensure: [ self inform: 'ensure' ]!

go	(1 to: 3) do: [ :index | self inform: index ]!

renderContentOn: html	html paragraph: 'The following two anchors should trigger a 3 step flow. Backtracking and spawning of windows should properly work.'.	html paragraph: [		html anchor			callback: [ self go ];			with: 'Go' ].	html paragraph 		style: 'color: red; font-weight: bold';		with: 'WARNING: FOLLOWING SECTION IS FOR DEVELOPERS ONLY'.	html paragraph: [		html text: 'The "Go with ensure" test is '.		html span style: 'color:red; font-weight:bold'; with: 'expected to fail'.		html text: ' right now, as the ensure fires during rendering. The ensure does not survive across continuations at the present time.' ].	html paragraph: [		html anchor			callback: [ self ensure ];			with: 'Go with ensure' ]!

states	^ Array with: self! !

!WAFlowClosureFunctionalTest categoriesForMethods!
ensure!actions!public! !
go!actions!public! !
renderContentOn:!public!rendering! !
states!hooks!public! !
!


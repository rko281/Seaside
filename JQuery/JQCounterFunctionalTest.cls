"Filed out from Dolphin Smalltalk"!

JQFunctionalTest subclass: #JQCounterFunctionalTest
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQCounterFunctionalTest guid: (GUID fromString: '{a963c4f0-bf99-4973-89eb-a10d872bd608}')!

JQCounterFunctionalTest comment: ''!

!JQCounterFunctionalTest categoriesForClass!Functional! !

!JQCounterFunctionalTest methodsFor!

initialize	super initialize.	count := 0!

renderContentOn: html	html paragraph: [		html anchor			url: 'javascript:void(0)';			onClick: ((html jQuery: #count) load				html: [ :h | h render: (count := count - 1) ]);			with: '--'.		html span			id: #count;			with: count.		html anchor			url: 'javascript:void(0)';			onClick: ((html jQuery: #count) load				html: [ :h | h render: (count := count + 1) ]);			with: '++' ]!

selectors	^ #(initialize renderContentOn:)!

style	^ '#count { margin: 0 0.5em; }'!

title	^ 'Counting Up and Down'! !

!JQCounterFunctionalTest categoriesForMethods!
initialize!initialization!public! !
renderContentOn:!public!rendering! !
selectors!accessing!public! !
style!hooks!public! !
title!accessing!public! !
!


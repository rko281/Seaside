"Filed out from Dolphin Smalltalk 7"!

JQFunctionalTest subclass: #JQCounterFunctionalTest
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQCounterFunctionalTest guid: (GUID fromString: '{08ea364b-7a94-4c44-9ef5-630a2277e4c6}')!
JQCounterFunctionalTest comment: ''!
!JQCounterFunctionalTest categoriesForClass!JQuery-Tests-Core-Functional! !
!JQCounterFunctionalTest methodsFor!

initialize	super initialize.	count := 0!

renderContentOn: html	html paragraph: [		html anchor			url: 'javascript:void(0)';			onClick: ((html jQuery: #count) load				html: [ :h | h render: (count := count - 1) ]);			with: '--'.		html span			id: #count;			with: count.		html anchor			url: 'javascript:void(0)';			onClick: ((html jQuery: #count) load				html: [ :h | h render: (count := count + 1) ]);			with: '++' ]!

selectors	^ #(initialize renderContentOn:)!

style	^ '#count { margin: 0 0.5em; }'!

title	^ 'Counting Up and Down'! !
!JQCounterFunctionalTest categoriesFor: #initialize!initialization!public! !
!JQCounterFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQCounterFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQCounterFunctionalTest categoriesFor: #style!hooks!public! !
!JQCounterFunctionalTest categoriesFor: #title!accessing!public! !


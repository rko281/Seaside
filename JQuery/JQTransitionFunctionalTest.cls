"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQTransitionFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQTransitionFunctionalTest guid: (GUID fromString: '{2dfa5f49-59bc-4b5c-93c9-4e255a2806e8}')!
JQTransitionFunctionalTest comment: ''!
!JQTransitionFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQTransitionFunctionalTest methodsFor!

renderContentOn: html	html paragraph class: 'actions'; with: [		#( green wide bold ) do: [ :each |			html anchor				onClick: ((html jQuery: '.box')					toggleClass: each					duration: 'slow');				with: (each copyUpTo: $:) ] ].	self renderBoxOn: html!

selectors	^ #(renderContentOn:)!

style	^ '.wide { width: 100%; height: 50px; }.bold { border-width: 5px; }'!

title	^ 'Class Transition'!

url	^ 'http://docs.jquery.com/UI/Effects/ClassTransitions'! !
!JQTransitionFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQTransitionFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQTransitionFunctionalTest categoriesFor: #style!hooks!public! !
!JQTransitionFunctionalTest categoriesFor: #title!accessing!public! !
!JQTransitionFunctionalTest categoriesFor: #url!accessing!public! !


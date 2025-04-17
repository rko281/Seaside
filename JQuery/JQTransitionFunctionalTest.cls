"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQTransitionFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQTransitionFunctionalTest guid: (GUID fromString: '{a47d6e6d-80fe-41ac-bf44-042107a9fb85}')!

JQTransitionFunctionalTest comment: ''!

!JQTransitionFunctionalTest categoriesForClass!Functional! !

!JQTransitionFunctionalTest methodsFor!

renderContentOn: html	html paragraph class: 'actions'; with: [		#( green wide bold ) do: [ :each |			html anchor				onClick: ((html jQuery: '.box')					toggleClass: each					duration: 'slow');				with: (each copyUpTo: $:) ] ].	self renderBoxOn: html!

selectors	^ #(renderContentOn:)!

style	^ '.wide { width: 100%; height: 50px; }.bold { border-width: 5px; }'!

title	^ 'Class Transition'!

url	^ 'http://docs.jquery.com/UI/Effects/ClassTransitions'! !

!JQTransitionFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
selectors!accessing!public! !
style!hooks!public! !
title!accessing!public! !
url!accessing!public! !
!


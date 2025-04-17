"Filed out from Dolphin Smalltalk"!

JQFunctionalTest subclass: #JQEffectsFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQEffectsFunctionalTest guid: (GUID fromString: '{f8bfff30-7346-4b7d-99b7-a0f3f39a2947}')!

JQEffectsFunctionalTest comment: ''!

!JQEffectsFunctionalTest categoriesForClass!Functional! !

!JQEffectsFunctionalTest methodsFor!

renderContentOn: html	html paragraph class: 'actions'; with: [		#(show: hide: toggle: slideDown: slideUp: slideToggle: fadeIn: fadeOut: fadeToggle:) do: [ :selector |			html anchor				onClick: ((html jQuery: #seastar) 					perform: selector					with: 1 seconds);				with: selector allButLast ] ].	self renderSeastarOn: html!

selectors	^ #(renderContentOn: renderSeastarOn:)!

title	^ 'Effects'! !

!JQEffectsFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
!


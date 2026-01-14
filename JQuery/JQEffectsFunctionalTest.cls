"Filed out from Dolphin Smalltalk"!

JQFunctionalTest subclass: #JQEffectsFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQEffectsFunctionalTest guid: (GUID fromString: '{049f123d-6328-4edb-9f38-039a63f3a95f}')!

JQEffectsFunctionalTest comment: ''!

!JQEffectsFunctionalTest categoriesForClass!JQuery-Tests-Core-Functional! !

!JQEffectsFunctionalTest methodsFor!

renderContentOn: html	html paragraph class: 'actions'; with: [		#(show: hide: toggle: slideDown: slideUp: slideToggle: fadeIn: fadeOut: fadeToggle:) do: [ :selector |			html anchor				onClick: ((html jQuery: #seastar) 					perform: selector					with: 1 seconds);				with: selector allButLast ] ].	self renderSeastarOn: html!

selectors	^ #(renderContentOn: renderSeastarOn:)!

title	^ 'Effects'! !

!JQEffectsFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
!


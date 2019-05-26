"Filed out from Dolphin Smalltalk 7"!

JQFunctionalTest subclass: #JQEffectsFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQEffectsFunctionalTest guid: (GUID fromString: '{45a18731-27f0-4c95-9ada-67f488b44810}')!
JQEffectsFunctionalTest comment: ''!
!JQEffectsFunctionalTest categoriesForClass!JQuery-Tests-Core-Functional! !
!JQEffectsFunctionalTest methodsFor!

renderContentOn: html	html paragraph class: 'actions'; with: [		#(show: hide: toggle: slideDown: slideUp: slideToggle: fadeIn: fadeOut: fadeToggle:) do: [ :selector |			html anchor				onClick: ((html jQuery: #seastar) 					perform: selector					with: 1 seconds);				with: selector allButLast ] ].	self renderSeastarOn: html!

selectors	^ #(renderContentOn: renderSeastarOn:)!

title	^ 'Effects'! !
!JQEffectsFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQEffectsFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQEffectsFunctionalTest categoriesFor: #title!accessing!public! !


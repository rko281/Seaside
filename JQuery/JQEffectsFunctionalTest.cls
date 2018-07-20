"Filed out from Dolphin Smalltalk 7"!

JQFunctionalTest subclass: #JQEffectsFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQEffectsFunctionalTest guid: (GUID fromString: '{10e88401-4caf-4f04-b6ea-91207f490425}')!
JQEffectsFunctionalTest comment: ''!
!JQEffectsFunctionalTest categoriesForClass!JQuery-Tests-Core-Functional! !
!JQEffectsFunctionalTest methodsFor!

renderContentOn: html	html paragraph class: 'actions'; with: [		#(show: hide: toggle: slideDown: slideUp: slideToggle: fadeIn: fadeOut: fadeToggle:) do: [ :selector |			html anchor				onClick: ((html jQuery: #seastar) 					perform: selector					with: 1 seconds);				with: selector allButLast ] ].	self renderSeastarOn: html!

selectors	^ #(renderContentOn: renderSeastarOn:)!

title	^ 'Effects'! !
!JQEffectsFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQEffectsFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQEffectsFunctionalTest categoriesFor: #title!accessing!public! !


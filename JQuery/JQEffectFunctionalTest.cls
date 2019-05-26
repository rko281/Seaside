"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQEffectFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQEffectFunctionalTest guid: (GUID fromString: '{b4540dc3-b2fd-45cd-8b5f-33b25f6d077d}')!
JQEffectFunctionalTest comment: ''!
!JQEffectFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQEffectFunctionalTest methodsFor!

bounce: anEffect	^ anEffect bounce; easing: 'linear'; times: 2!

highlight: anEffect	^ anEffect highlight; color: '#f00'!

pulsate: anEffect	^ anEffect pulsate times: 2!

renderContentOn: html	html paragraph class: 'actions'; with: [		#( bounce highlight pulsate shake size transfer ) do: [ :each | 			html anchor				onClick: (self					perform: each asMutator					with: (html jQuery: '.box') effect);				with: each ] ].	self renderBoxOn: html!

selectors	^ #(renderContentOn: bounce: highlight: pulsate: shake: size: transfer:)!

shake: anEffect	^ anEffect shake; distance: 10; times: 2!

size: anEffect	^ anEffect effect; size; toWidth: 50; toHeight: 25!

style	^ '.ui-effects-transfer { border: 2px dashed black; }'!

title	^ 'Basic Effects'!

transfer: anEffect	^ anEffect transfer; to: 'h1.logo a'; slow!

url	^ 'http://docs.jquery.com/UI/Effects'! !
!JQEffectFunctionalTest categoriesFor: #bounce:!effects!public! !
!JQEffectFunctionalTest categoriesFor: #highlight:!effects!public! !
!JQEffectFunctionalTest categoriesFor: #pulsate:!effects!public! !
!JQEffectFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQEffectFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQEffectFunctionalTest categoriesFor: #shake:!effects!public! !
!JQEffectFunctionalTest categoriesFor: #size:!effects!public! !
!JQEffectFunctionalTest categoriesFor: #style!hooks!public! !
!JQEffectFunctionalTest categoriesFor: #title!accessing!public! !
!JQEffectFunctionalTest categoriesFor: #transfer:!effects!public! !
!JQEffectFunctionalTest categoriesFor: #url!accessing!public! !


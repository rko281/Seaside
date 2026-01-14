"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQEffectFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQEffectFunctionalTest guid: (GUID fromString: '{49835552-0116-4e68-80e3-7824b4b4210b}')!

JQEffectFunctionalTest comment: ''!

!JQEffectFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !

!JQEffectFunctionalTest methodsFor!

bounce: anEffect	^ anEffect bounce; easing: 'linear'; times: 2!

highlight: anEffect	^ anEffect highlight; color: '#f00'!

pulsate: anEffect	^ anEffect pulsate times: 2!

renderContentOn: html	html paragraph class: 'actions'; with: [		#( bounce highlight pulsate shake size transfer ) do: [ :each | 			html anchor				onClick: (self					perform: each greaseAsMutator					with: (html jQuery: '.box') effect);				with: each ] ].	self renderBoxOn: html!

selectors	^ #(renderContentOn: bounce: highlight: pulsate: shake: size: transfer:)!

shake: anEffect	^ anEffect shake; distance: 10; times: 2!

size: anEffect	^ anEffect effect; size; toWidth: 50; toHeight: 25!

style	^ '.ui-effects-transfer { border: 2px dashed black; }'!

title	^ 'Basic Effects'!

transfer: anEffect	^ anEffect transfer; to: 'h1.logo a'; slow!

url	^ 'http://docs.jquery.com/UI/Effects'! !

!JQEffectFunctionalTest categoriesForMethods!
bounce:!effects!public! !
highlight:!effects!public! !
pulsate:!effects!public! !
renderContentOn:!public!rendering! !
selectors!accessing!public! !
shake:!effects!public! !
size:!effects!public! !
style!hooks!public! !
title!accessing!public! !
transfer:!effects!public! !
url!accessing!public! !
!


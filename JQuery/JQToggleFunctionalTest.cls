"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQToggleFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQToggleFunctionalTest guid: (GUID fromString: '{9ed9c80a-6863-44d1-8031-6d7f45d20cfc}')!

JQToggleFunctionalTest comment: ''!

!JQToggleFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !

!JQToggleFunctionalTest methodsFor!

renderContentOn: html	html paragraph class: 'actions'; with: [		#( blind clip drop explode fade fold puff scale slide ) do: [ :each | 			html anchor				onClick: ((html jQuery: '.box') effect					toggle;					perform: each);				with: each ] ].	self renderBoxOn: html!

selectors	^ #(renderContentOn:)!

title	^ 'Toggle Effects'!

url	^ 'http://docs.jquery.com/UI/Effects'! !

!JQToggleFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
url!accessing!public! !
!


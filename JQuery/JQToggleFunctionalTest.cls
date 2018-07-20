"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQToggleFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQToggleFunctionalTest guid: (GUID fromString: '{44d2e900-6fb7-478b-aaaf-5d081b35abd7}')!
JQToggleFunctionalTest comment: ''!
!JQToggleFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQToggleFunctionalTest methodsFor!

renderContentOn: html	html paragraph class: 'actions'; with: [		#( blind clip drop explode fade fold puff scale slide ) do: [ :each | 			html anchor				onClick: ((html jQuery: '.box') effect					toggle;					perform: each);				with: each ] ].	self renderBoxOn: html!

selectors	^ #(renderContentOn:)!

title	^ 'Toggle Effects'!

url	^ 'http://docs.jquery.com/UI/Effects'! !
!JQToggleFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQToggleFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQToggleFunctionalTest categoriesFor: #title!accessing!public! !
!JQToggleFunctionalTest categoriesFor: #url!accessing!public! !


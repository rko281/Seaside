"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQToggleFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQToggleFunctionalTest guid: (GUID fromString: '{2e696174-c294-4907-81c0-bd938046f773}')!
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


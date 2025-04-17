"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQToggleFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQToggleFunctionalTest guid: (GUID fromString: '{8a55ef66-e318-4ad6-a495-497f359aaa44}')!

JQToggleFunctionalTest comment: ''!

!JQToggleFunctionalTest categoriesForClass!Functional! !

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


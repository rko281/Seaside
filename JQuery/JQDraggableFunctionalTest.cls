"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQDraggableFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQDraggableFunctionalTest guid: (GUID fromString: '{7f913fe5-2b11-4542-8c80-2ba3af7cba35}')!

JQDraggableFunctionalTest comment: ''!

!JQDraggableFunctionalTest categoriesForClass!Functional! !

!JQDraggableFunctionalTest methodsFor!

renderContentOn: html	| top left id |		html paragraph		id: (id := html nextId);		with: 'Drag the Seaside logo!!'.	html image		altText: 'Seaside';		url: (JQUiAllFunctionalTestsLibrary urlOf: #seastarPng);		script: (html jQuery new draggable 						opacity: 0.75;						onStop: ((html jQuery id:  id) load 										callbackDraggable: [ :e | top := (e at: #position) at: 'top'. left := (e at: #position) at: 'left' ];										html: [ :r | r text: 'top:',top greaseString,'px left:',left greaseString,'px' ] ))!

selectors	^ #(renderContentOn:)!

title	^ 'Draggable Interaction'!

url	^ 'http://docs.jquery.com/UI/Draggable'! !

!JQDraggableFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
url!accessing!public! !
!


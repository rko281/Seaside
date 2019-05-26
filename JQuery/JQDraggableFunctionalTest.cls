"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQDraggableFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQDraggableFunctionalTest guid: (GUID fromString: '{4e20b183-df85-47c5-99b6-f8de75248b3e}')!
JQDraggableFunctionalTest comment: ''!
!JQDraggableFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQDraggableFunctionalTest methodsFor!

renderContentOn: html	| top left id |		html paragraph		id: (id := html nextId);		with: 'Drag the Seaside logo!!'.	html image		altText: 'Seaside';		url: (JQUiAllFunctionalTestsLibrary urlOf: #seastarPng);		script: (html jQuery new draggable 						opacity: 0.75;						onStop: ((html jQuery id:  id) load 										callbackDraggable: [ :e | top := (e at: #position) at:#top. left := (e at: #position) at:#left ];										html: [ :r | r text: 'top:',top greaseString,'px left:',left greaseString,'px' ] ))!

selectors	^ #(renderContentOn:)!

title	^ 'Draggable Interaction'!

url	^ 'http://docs.jquery.com/UI/Draggable'! !
!JQDraggableFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQDraggableFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQDraggableFunctionalTest categoriesFor: #title!accessing!public! !
!JQDraggableFunctionalTest categoriesFor: #url!accessing!public! !


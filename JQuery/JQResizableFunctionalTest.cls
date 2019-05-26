"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQResizableFunctionalTest
	instanceVariableNames: 'size'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQResizableFunctionalTest guid: (GUID fromString: '{32ce5a51-53a1-495a-82c8-32efd4d17510}')!
JQResizableFunctionalTest comment: ''!
!JQResizableFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQResizableFunctionalTest methodsFor!

initialize	super initialize.	size := 128 @ 128!

renderContentOn: html	html image		altText: 'Seaside';		width: size x; height: size y;		url: (JQUiAllFunctionalTestsLibrary urlOf: #seastarPng);		script: (html jQuery new resizable			onStop: (html jQuery ajax				callbackResizable: [ :event | size := event at: #size ]))!

selectors	^ #(renderContentOn:)!

title	^ 'Resizable Interaction'!

url	^ 'http://docs.jquery.com/UI/Resizable'! !
!JQResizableFunctionalTest categoriesFor: #initialize!initialization!public! !
!JQResizableFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQResizableFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQResizableFunctionalTest categoriesFor: #title!accessing!public! !
!JQResizableFunctionalTest categoriesFor: #url!accessing!public! !


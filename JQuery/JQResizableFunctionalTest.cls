"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQResizableFunctionalTest
	instanceVariableNames: 'size'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQResizableFunctionalTest guid: (GUID fromString: '{68d5f841-f231-4460-81d1-e385215f200c}')!

JQResizableFunctionalTest comment: ''!

!JQResizableFunctionalTest categoriesForClass!Functional! !

!JQResizableFunctionalTest methodsFor!

initialize	super initialize.	size := 128 @ 128!

renderContentOn: html	html image		altText: 'Seaside';		width: size x; height: size y;		url: (JQUiAllFunctionalTestsLibrary urlOf: #seastarPng);		script: (html jQuery new resizable			onStop: (html jQuery ajax				callbackResizable: [ :event | size := event at: #size ]))!

selectors	^ #(renderContentOn:)!

title	^ 'Resizable Interaction'!

url	^ 'http://docs.jquery.com/UI/Resizable'! !

!JQResizableFunctionalTest categoriesForMethods!
initialize!initialization!public! !
renderContentOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
url!accessing!public! !
!


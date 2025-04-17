"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQDialogFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQDialogFunctionalTest guid: (GUID fromString: '{640a7578-d92c-43bd-a5b8-5360a71133b5}')!

JQDialogFunctionalTest comment: ''!

!JQDialogFunctionalTest categoriesForClass!Functional! !

!JQDialogFunctionalTest methodsFor!

renderContentOn: html	self renderWindowOn: html.	self renderLightboxOn: html!

renderDialog: aString on: html	html paragraph: [ html text: 'This is a '; text: aString; text: '.' ]!

renderLightboxOn: html	| id |	html div		id: (id := html nextId);		script: (html jQuery new dialog			html: JQCounterFunctionalTest new;			title: 'Lightbox Dialog';			resizable: false;			modal: true).	html submitButton		onClick: (html jQuery id: id) dialog open;		with: 'Open Lightbox'!

renderWindowOn: html	| id |	html div		id: (id := html nextId);		script: (html jQuery new dialog			title: 'Vegetables';			autoOpen: false;			addButton: 'Close' do: html jQuery new dialog close);		with: [ html unorderedList list: self vegetables ].	html submitButton		onClick: (html jQuery id: id) dialog open;		with: 'Open Window'.	html submitButton		onClick: (html jQuery id: id) dialog close;		with: 'Close Window'!

selectors	^ #(renderWindowOn: renderLightboxOn:)!

title	^ 'Dialog Widget'!

url	^ 'http://docs.jquery.com/UI/Dialog'! !

!JQDialogFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderDialog:on:!public!utilities! !
renderLightboxOn:!public!rendering! !
renderWindowOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
url!accessing!public! !
!


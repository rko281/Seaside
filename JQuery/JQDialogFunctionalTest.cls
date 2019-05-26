"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQDialogFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQDialogFunctionalTest guid: (GUID fromString: '{a08ecf9a-c851-428a-bc66-1f2ab9348919}')!
JQDialogFunctionalTest comment: ''!
!JQDialogFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQDialogFunctionalTest methodsFor!

renderContentOn: html	self renderWindowOn: html.	self renderLightboxOn: html!

renderDialog: aString on: html	html paragraph: [ html text: 'This is a '; text: aString; text: '.' ]!

renderLightboxOn: html	| id |	html div		id: (id := html nextId);		script: (html jQuery new dialog			html: JQCounterFunctionalTest new;			title: 'Lightbox Dialog';			resizable: false;			modal: true).	html submitButton		onClick: (html jQuery id: id) dialog open;		with: 'Open Lightbox'!

renderWindowOn: html	| id |	html div		id: (id := html nextId);		script: (html jQuery new dialog			title: 'Vegetables';			autoOpen: false;			addButton: 'Close' do: html jQuery new dialog close);		with: [ html unorderedList list: self vegetables ].	html submitButton		onClick: (html jQuery id: id) dialog open;		with: 'Open Window'.	html submitButton		onClick: (html jQuery id: id) dialog close;		with: 'Close Window'!

selectors	^ #(renderWindowOn: renderLightboxOn:)!

title	^ 'Dialog Widget'!

url	^ 'http://docs.jquery.com/UI/Dialog'! !
!JQDialogFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQDialogFunctionalTest categoriesFor: #renderDialog:on:!public!utilities! !
!JQDialogFunctionalTest categoriesFor: #renderLightboxOn:!public!rendering! !
!JQDialogFunctionalTest categoriesFor: #renderWindowOn:!public!rendering! !
!JQDialogFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQDialogFunctionalTest categoriesFor: #title!accessing!public! !
!JQDialogFunctionalTest categoriesFor: #url!accessing!public! !


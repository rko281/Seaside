"Filed out from Dolphin Smalltalk 7"!

JQFunctionalTest subclass: #JQAjaxFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAjaxFunctionalTest guid: (GUID fromString: '{d4a4bdab-630b-4cb4-88b6-2c62b3305216}')!
JQAjaxFunctionalTest comment: ''!
!JQAjaxFunctionalTest categoriesForClass!JQuery-Tests-Core-Functional! !
!JQAjaxFunctionalTest methodsFor!

renderContentOn: html	html code id: #logger; with: DateAndTime now.	html paragraph: [		html submitButton			onClick: (html jQuery ajax				script: [ :s | s << (s jQuery: #logger) html: DateAndTime now ]);			with: 'Replace'.		html submitButton			onClick: (html jQuery ajax				script: [ :s | s << (s jQuery: #logger) prepend: DateAndTime now ]);			with: 'Prepend'.		html submitButton			onClick: (html jQuery ajax				script: [ :s | s << (s jQuery: #logger) append: DateAndTime now ]);			with: 'Append' ]!

selectors	^ #(renderContentOn:)!

title	^ 'Ajax and DOM Manipulation'! !
!JQAjaxFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQAjaxFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQAjaxFunctionalTest categoriesFor: #title!accessing!public! !


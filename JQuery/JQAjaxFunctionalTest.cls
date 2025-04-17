"Filed out from Dolphin Smalltalk"!

JQFunctionalTest subclass: #JQAjaxFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAjaxFunctionalTest guid: (GUID fromString: '{365f23bf-cb47-4fd6-858d-40482e0feffa}')!

JQAjaxFunctionalTest comment: ''!

!JQAjaxFunctionalTest categoriesForClass!Functional! !

!JQAjaxFunctionalTest methodsFor!

renderContentOn: html	html code id: #logger; with: DateAndTime now.	html paragraph: [		html submitButton			onClick: (html jQuery ajax				script: [ :s | s << (s jQuery: #logger) html: DateAndTime now ]);			with: 'Replace'.		html submitButton			onClick: (html jQuery ajax				script: [ :s | s << (s jQuery: #logger) prepend: DateAndTime now ]);			with: 'Prepend'.		html submitButton			onClick: (html jQuery ajax				script: [ :s | s << (s jQuery: #logger) append: DateAndTime now ]);			with: 'Append' ]!

selectors	^ #(renderContentOn:)!

title	^ 'Ajax and DOM Manipulation'! !

!JQAjaxFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
!


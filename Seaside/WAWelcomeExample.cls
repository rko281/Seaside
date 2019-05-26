"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAWelcomeExample
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcomeExample guid: (GUID fromString: '{49ddd07e-0ec3-4256-9faa-7962904b3418}')!
WAWelcomeExample comment: ''!
!WAWelcomeExample categoriesForClass!Seaside-Welcome! !
!WAWelcomeExample methodsFor!

renderContentOn: html	html heading level1 with: 'Example: ', self title.	html anchor		class: 'goback';		callback: [ self answer ];		with: '[ go back ]'.	self renderExampleOn: html.			html div		class: 'buttons';		with: [			html anchor				callback: [ self answer ];				script: (html jQuery this button					primaryIcon: 'ui-icon-arrowreturnthick-1-w');				title: 'Go back';				with: 'Back' ]!

renderExampleOn: html	self subclassResponsibility!

title	self subclassResponsibility! !
!WAWelcomeExample categoriesFor: #renderContentOn:!public!rendering! !
!WAWelcomeExample categoriesFor: #renderExampleOn:!public!rendering! !
!WAWelcomeExample categoriesFor: #title!private! !


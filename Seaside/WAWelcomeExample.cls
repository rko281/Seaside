"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAWelcomeExample
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcomeExample guid: (GUID fromString: '{56c1574f-ede9-4b5b-954d-9d5cd0c94d7d}')!
WAWelcomeExample comment: ''!
!WAWelcomeExample categoriesForClass!Seaside-Welcome! !
!WAWelcomeExample methodsFor!

renderContentOn: html	html heading level1 with: 'Example: ', self title.	html anchor		class: 'goback';		callback: [ self answer ];		with: '[ go back ]'.	self renderExampleOn: html.			html div		class: 'buttons';		with: [			html anchor				callback: [ self answer ];				script: (html jQuery this button					primaryIcon: 'ui-icon-arrowreturnthick-1-w');				title: 'Go back';				with: 'Back' ]!

renderExampleOn: html	self subclassResponsibility!

title	self subclassResponsibility! !
!WAWelcomeExample categoriesFor: #renderContentOn:!public!rendering! !
!WAWelcomeExample categoriesFor: #renderExampleOn:!public!rendering! !
!WAWelcomeExample categoriesFor: #title!private! !


"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAWelcomeExample
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWelcomeExample guid: (GUID fromString: '{0f7661ab-3972-44ca-a528-89b4d7082234}')!

WAWelcomeExample comment: ''!

!WAWelcomeExample categoriesForClass!Seaside-Welcome-Examples! !

!WAWelcomeExample methodsFor!

renderContentOn: html	html heading level1 with: 'Example: ', self title.	html anchor		class: 'goback';		callback: [ self answer ];		with: '[ go back ]'.	self renderExampleOn: html.			html div		class: 'buttons';		with: [			html anchor				callback: [ self answer ];				script: (html jQuery this button					primaryIcon: 'ui-icon-arrowreturnthick-1-w');				title: 'Go back';				with: 'Back' ]!

renderExampleOn: html	self subclassResponsibility!

title	self subclassResponsibility! !

!WAWelcomeExample categoriesForMethods!
renderContentOn:!public!rendering! !
renderExampleOn:!public!rendering! !
title!private! !
!


"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAWelcomeExample
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWelcomeExample guid: (GUID fromString: '{fb9ff325-1af3-46e3-80e9-23234a8a7e7a}')!

WAWelcomeExample comment: ''!

!WAWelcomeExample categoriesForClass!Examples! !

!WAWelcomeExample methodsFor!

renderContentOn: html	html heading level1 with: 'Example: ', self title.	html anchor		class: 'goback';		callback: [ self answer ];		with: '[ go back ]'.	self renderExampleOn: html.			html div		class: 'buttons';		with: [			html anchor				callback: [ self answer ];				script: (html jQuery this button					primaryIcon: 'ui-icon-arrowreturnthick-1-w');				title: 'Go back';				with: 'Back' ]!

renderExampleOn: html	self subclassResponsibility!

title	self subclassResponsibility! !

!WAWelcomeExample categoriesForMethods!
renderContentOn:!public!rendering! !
renderExampleOn:!public!rendering! !
title!private! !
!


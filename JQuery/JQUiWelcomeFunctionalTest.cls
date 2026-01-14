"Filed out from Dolphin Smalltalk"!

JQWelcomeFunctionalTest subclass: #JQUiWelcomeFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQUiWelcomeFunctionalTest guid: (GUID fromString: '{f7f88e2f-c211-4842-99fd-aab0b4fdfceb}')!

JQUiWelcomeFunctionalTest comment: ''!

!JQUiWelcomeFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !

!JQUiWelcomeFunctionalTest methodsFor!

renderContentOn: html	super renderContentOn: html.	self renderQueryUiOn: html!

renderQueryUiOn: html	html heading level: 4; with: 'jQuery UI'.	html paragraph: [		html anchor			url: 'http://ui.jquery.com/';			with: 'jQuery UI'.		html text: ' provides abstractions for low-level interaction and high-level, themeable widgets, built on top of the jQuery JavaScript Library, that you can use to build highly interactive web applications.' ]!

renderWelcomeOn: html	html paragraph: [		html anchor			url: 'http://www.seaside.st/';			with: 'Seaside'.		html text: ' provides a complete integration of '.		html anchor			url: 'http://www.jquery.com/';			with: 'jQuery'.		html text: ' and '.		html anchor			url: 'http://ui.jquery.com/';			with: 'jQuery UI'.		html text: ', allowing the use of these libraries without having to write a single line of JavaScript code. Everything can be configured and plugged together using Smalltalk objects. Try by yourself, by clicking through this functional test suite and by browsing the source-code.' ]! !

!JQUiWelcomeFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderQueryUiOn:!public!rendering! !
renderWelcomeOn:!public!rendering! !
!


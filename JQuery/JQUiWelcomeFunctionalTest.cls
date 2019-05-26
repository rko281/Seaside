"Filed out from Dolphin Smalltalk 7"!

JQWelcomeFunctionalTest subclass: #JQUiWelcomeFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQUiWelcomeFunctionalTest guid: (GUID fromString: '{62f0c6d1-1e0b-4950-9713-e5265e40c70f}')!
JQUiWelcomeFunctionalTest comment: ''!
!JQUiWelcomeFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQUiWelcomeFunctionalTest methodsFor!

renderContentOn: html	super renderContentOn: html.	self renderQueryUiOn: html!

renderQueryUiOn: html	html heading level: 4; with: 'jQuery UI'.	html paragraph: [		html anchor			url: 'http://ui.jquery.com/';			with: 'jQuery UI'.		html text: ' provides abstractions for low-level interaction and high-level, themeable widgets, built on top of the jQuery JavaScript Library, that you can use to build highly interactive web applications.' ]!

renderWelcomeOn: html	html paragraph: [		html anchor			url: 'http://www.seaside.st/';			with: 'Seaside'.		html text: ' provides a complete integration of '.		html anchor			url: 'http://www.jquery.com/';			with: 'jQuery'.		html text: ' and '.		html anchor			url: 'http://ui.jquery.com/';			with: 'jQuery UI'.		html text: ', allowing the use of these libraries without having to write a single line of JavaScript code. Everything can be configured and plugged together using Smalltalk objects. Try by yourself, by clicking through this functional test suite and by browsing the source-code.' ]! !
!JQUiWelcomeFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQUiWelcomeFunctionalTest categoriesFor: #renderQueryUiOn:!public!rendering! !
!JQUiWelcomeFunctionalTest categoriesFor: #renderWelcomeOn:!public!rendering! !


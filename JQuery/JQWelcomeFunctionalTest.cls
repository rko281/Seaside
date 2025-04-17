"Filed out from Dolphin Smalltalk"!

JQFunctionalTest subclass: #JQWelcomeFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQWelcomeFunctionalTest guid: (GUID fromString: '{faaaaad0-2187-481e-b513-d3f565a1b029}')!

JQWelcomeFunctionalTest comment: ''!

!JQWelcomeFunctionalTest categoriesForClass!Functional! !

!JQWelcomeFunctionalTest methodsFor!

renderContentOn: html	self renderWelcomeOn: html.	self renderSeasideOn: html.	self renderQueryOn: html!

renderQueryOn: html	html heading level: 4; with: 'jQuery'.	html paragraph: [		html anchor			url: 'http://www.jquery.com/';			with: 'jQuery'.		html text: ' is a fast and concise Javascript Library that simplifies HTML document traversing, event handling, animating, and Ajax interactions for rapid web development. jQuery is designed to change the way that you write JavaScript.' ]!

renderSeasideOn: html	html heading level: 4; with: 'Seaside'.	html paragraph: [		html anchor			url: 'http://www.seaside.st/';			with: 'Seaside'.		html text: ' is a framework for developing sophisticated web applications in Smalltalk. It provides a layered set of abstractions over HTTP and HTML that let you build highly interactive web applications quickly, reusably and maintainably.' ]!

renderWelcomeOn: html	html paragraph: [		html anchor			url: 'http://www.seaside.st/';			with: 'Seaside'.		html text: ' provides a complete integration of '.		html anchor			url: 'http://www.jquery.com/';			with: 'jQuery'.		html text: ', allowing the use of the library without having to write a single line of JavaScript code. Everything can be configured and plugged together using Smalltalk objects. Try by yourself, by clicking through this functional test suite and by browsing the source-code.' ]!

title	^ 'Welcome'! !

!JQWelcomeFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderQueryOn:!public!rendering! !
renderSeasideOn:!public!rendering! !
renderWelcomeOn:!public!rendering! !
title!accessing!public! !
!


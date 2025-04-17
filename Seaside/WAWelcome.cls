"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAWelcome
	instanceVariableNames: 'component'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWelcome guid: (GUID fromString: '{31dc4f8c-d167-4c98-a339-f06a87d7f16b}')!

WAWelcome comment: 'An short introduction to Seaside'!

!WAWelcome categoriesForClass!Base! !

!WAWelcome methodsFor!

children	^ Array with: self component!

component	^ component ifNil: [ component := WAWelcomeGettingStarted new ]!

renderContentOn: html	html div		class: 'container';		with: [			html div				class: 'sidebar';				with: [ self renderSideBarOn: html ].			html div				class: 'content';				with: [ self renderMainContentOn: html ].			html div class: 'clear' ]!

renderHeadingOn: html	html div		class: 'header';		with: [			html heading				level1;				class: 'welcome';				with: self title.						html heading				level2;				class: 'congrats';				with: 'Congratulations, you have a working Seaside environment.' ]!

renderMainContentOn: html	self renderHeadingOn: html.	html div		class: 'getting-started';		with: self component!

renderSideBarDivingInOn: html	html heading		level: 3; 		with: 'Diving In'.			html unorderedList: [		html listItem: [			html anchor				callback: [ self component show: WAWelcomeBrowse new ];				with: 'Browse'.			html text: ' the applications installed in your image.' ].		html listItem: [ 			html anchor				callback: [ self component show: WAWelcomeConfigure new ];				with: 'Configure'.			html text: ' your Seaside development environment.' ].		html listItem: [			html text: 'Check out examples of Seaside''s '.			html anchor				url: '/javascript/jquery';				with: 'JQuery'.			html text: ' and '.			html anchor				url: '/javascript/jquery-ui';				with: 'JQuery UI'.			html text: ' integration.' ]. 		html listItem: [			html text: 'Upgrading from a previous version? Read through the '.			html anchor				url: 'https://github.com/SeasideSt/Seaside/releases/';				with: 'Seaside Releases Log' ].		GRPlatform current seasideVersion revision isZero ifFalse:[			| majorReleaseVersion |			majorReleaseVersion := GRPlatform current seasideVersion copy revision: 0; yourself.			html listItem: [				html text: 'Seaside ', majorReleaseVersion greaseString.				html anchor					url: 'https://github.com/SeasideSt/Seaside/releases/tag/v', majorReleaseVersion greaseString;					with: ' changes' ] ].		html listItem: [			html text: 'Seaside '.			html anchor				url: 'https://github.com/SeasideSt/Seaside/wiki/Add-On-Libraries';				with: 'add-on libraries' ]	]!

renderSideBarJoinTheCommunityOn: html	html heading		level: 3; 		with: 'Join the community'.			html unorderedList: [		html listItem: [			html text: 'Join the '.			html anchor				url: 'http://lists.squeakfoundation.org/cgi-bin/mailman/listinfo/seaside';				with: 'mailing list'.			html text: ' to ask questions and get help.' ] ].	html form		action: 'http://www.google.com/search';		get;		with: [			html hiddenInput				value: 'site:lists.squeakfoundation.org/pipermail/seaside/';				name: 'q'.			html textInput				name: 'q'.			html submitButton: 'Search'.			html text: ' the mailing list' ]!

renderSideBarOn: html	html space.	html form		action: 'http://www.google.com/search';		get;		with: [			html hiddenInput				value: 'site:seaside.st';				name: 'q'.			html textInput				name: 'q'.			html submitButton: 'Search'.			html text: ' the Seaside site' ].		self renderSideBarJoinTheCommunityOn: html.	self renderSideBarDivingInOn: html!

title	^ 'Welcome to Seaside ', GRPlatform current seasideVersion greaseString!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.		anHtmlRoot title: self title.	anHtmlRoot link beShortcutIcon; url: WAToolFiles / #faviconIco! !

!WAWelcome categoriesForMethods!
children!hooks!public! !
component!accessing!public! !
renderContentOn:!public!rendering! !
renderHeadingOn:!public!rendering! !
renderMainContentOn:!public!rendering! !
renderSideBarDivingInOn:!public!rendering! !
renderSideBarJoinTheCommunityOn:!public!rendering! !
renderSideBarOn:!public!rendering! !
title!accessing!public! !
updateRoot:!public!updating! !
!

!WAWelcome class methodsFor!

description	^ 'An short introduction to Seaside'!

initialize	self register!

register 	| application |	application := WAAdmin register: self asApplicationAt: 'welcome'.	WAAdmin defaultDispatcher defaultName: 'welcome'.	application		addLibrary: JQDeploymentLibrary;		addLibrary: JQUiDeploymentLibrary;		addLibrary: JQUiLightnessTheme;		addLibrary: WAWelcomeFiles;		scriptGeneratorClass: JQScriptGenerator! !

!WAWelcome class categoriesForMethods!
description!accessing!public! !
initialize!initialization!public! !
register!initialization!public! !
!


"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAWelcome
	instanceVariableNames: 'component'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcome guid: (GUID fromString: '{6305990a-f97a-4a57-a8f0-91a906a6c579}')!
WAWelcome comment: 'An short introduction to Seaside'!
!WAWelcome categoriesForClass!Seaside-Welcome! !
!WAWelcome methodsFor!

children	^ Array with: self component!

component	^ component ifNil: [ component := WAWelcomeGettingStarted new ]!

renderContentOn: html	html div		class: 'container';		with: [			html div				class: 'sidebar';				with: [ self renderSideBarOn: html ].			html div				class: 'content';				with: [ self renderMainContentOn: html ].			html div class: 'clear' ]!

renderHeadingOn: html	html div		class: 'header';		with: [			html heading				level1;				class: 'welcome';				with: self title.						html heading				level2;				class: 'congrats';				with: 'Congratulations, you have a working Seaside environment.' ]!

renderMainContentOn: html	self renderHeadingOn: html.	html div		class: 'getting-started';		with: self component!

renderSideBarDivingInOn: html	html heading		level: 3; 		with: 'Diving In'.			html unorderedList: [		html listItem: [			html anchor				callback: [ self component show: WAWelcomeBrowse new ];				with: 'Browse'.			html text: ' the applications installed in your image.' ].		html listItem: [ 			html anchor				callback: [ self component show: WAWelcomeConfigure new ];				with: 'Configure'.			html text: ' your Seaside development environment.' ].		html listItem: [			html text: 'Check out examples of Seaside''s '.			html anchor				url: '/javascript/jquery';				with: 'JQuery'.			html text: ' and '.			html anchor				url: '/javascript/jquery-ui';				with: 'JQuery UI'.			html text: ' integration.' ]. 		html listItem: [			html text: 'Seaside 3.3 '.			html anchor				url: 'https://github.com/SeasideSt/Seaside/wiki/Seaside330Changelog';				with: 'changes' ].			html listItem: [			html text: 'Seaside '.			html anchor				url: 'https://github.com/SeasideSt/Seaside/wiki/Add-On-Libraries';				with: 'add-on libraries' ]	]!

renderSideBarJoinTheCommunityOn: html	html heading		level: 3; 		with: 'Join the community'.			html unorderedList: [		html listItem: [			html text: 'Join the '.			html anchor				url: 'http://lists.squeakfoundation.org/cgi-bin/mailman/listinfo/seaside';				with: 'mailing list'.			html text: ' to ask questions and get help.' ] ].	html form		action: 'http://www.google.com/search';		get;		with: [			html hiddenInput				value: 'site:lists.squeakfoundation.org/pipermail/seaside/';				name: 'q'.			html textInput				name: 'q'.			html submitButton: 'Search'.			html text: ' the mailing list' ]!

renderSideBarOn: html	html space.	html form		action: 'http://www.google.com/search';		get;		with: [			html hiddenInput				value: 'site:seaside.st';				name: 'q'.			html textInput				name: 'q'.			html submitButton: 'Search'.			html text: ' the Seaside site' ].		self renderSideBarJoinTheCommunityOn: html.	self renderSideBarDivingInOn: html!

title	^ 'Welcome to Seaside 3.4'!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.		anHtmlRoot title: self title.	anHtmlRoot link beShortcutIcon; url: WAToolFiles / #faviconIco! !
!WAWelcome categoriesFor: #children!hooks!public! !
!WAWelcome categoriesFor: #component!accessing!public! !
!WAWelcome categoriesFor: #renderContentOn:!public!rendering! !
!WAWelcome categoriesFor: #renderHeadingOn:!public!rendering! !
!WAWelcome categoriesFor: #renderMainContentOn:!public!rendering! !
!WAWelcome categoriesFor: #renderSideBarDivingInOn:!public!rendering! !
!WAWelcome categoriesFor: #renderSideBarJoinTheCommunityOn:!public!rendering! !
!WAWelcome categoriesFor: #renderSideBarOn:!public!rendering! !
!WAWelcome categoriesFor: #title!accessing!public! !
!WAWelcome categoriesFor: #updateRoot:!public!updating! !

!WAWelcome class methodsFor!

description	^ 'An short introduction to Seaside'!

initialize	self register!

register 	| application |	application := WAAdmin register: self asApplicationAt: 'welcome'.	WAAdmin defaultDispatcher defaultName: 'welcome'.	application		addLibrary: JQDeploymentLibrary;		addLibrary: JQUiDeploymentLibrary;		addLibrary: JQUiLightnessTheme;		addLibrary: WAWelcomeFiles;		scriptGeneratorClass: JQScriptGenerator! !
!WAWelcome class categoriesFor: #description!accessing!public! !
!WAWelcome class categoriesFor: #initialize!initialization!public! !
!WAWelcome class categoriesFor: #register!initialization!public! !


"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WADispatcherBrowser
	instanceVariableNames: 'dispatcher'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADispatcherBrowser guid: (GUID fromString: '{0d990db8-0e31-4c0f-a6f9-424b89e9a6f1}')!
WADispatcherBrowser comment: ''!
!WADispatcherBrowser categoriesForClass!Seaside-Tools-Web! !
!WADispatcherBrowser methodsFor!

dispatcher	^ dispatcher!

dispatcher: aDispatcher	dispatcher := aDispatcher!

handlers	"Answer a dictionary of the visible request handlers."	^ self dispatcher handlers!

initializeOn: aDispatcher	self initialize.	dispatcher := aDispatcher!

initialRequest: aRequest	"Check my relative URL, if the last entry is an application open the config editor, else open the dispatcher editor."		super initialRequest: aRequest.	self openHandler: self lookupHandler!

lookupHandler	| consumer requesthandler |	consumer := self requestContext consumer.	requesthandler := self dispatcher.	[ consumer atEnd ] whileFalse: [		requesthandler := requesthandler isDispatcher				ifFalse: [ ^ requesthandler ]				ifTrue: [					requesthandler handlers 						at: consumer next						ifAbsent: [ ^ nil ] ] ].	^ requesthandler!

openHandler: aHandler	aHandler isNil ifTrue: [ ^ self ].	self dispatcher: (aHandler isDispatcher		ifFalse: [ aHandler parent ]		ifTrue: [ aHandler ])!

renderContentOn: html	self renderHeadingOn: html.	self renderDispatcherOn: html!

renderDispatcherOn: html	html table: [		self renderRow: self dispatcher named: '.' on: html.		self dispatcher isRoot			ifFalse: [ self renderRow: self dispatcher parent named: '..' on: html ].		self handlers keys sorted			do: [ :each | self renderRow: (self dispatcher handlers at: each) named: each on: html ] ]!

renderHeadingOn: html	html heading class: 'logo'; with: [		html anchor			url: (WAUrl new 				host: 'www.seaside.st';				yourself);			with: 'Seaside' ].	html heading class: 'title'; with: [		html anchor			url: self dispatcher url;			with: self title ]!

renderRow: anEntryPoint named: aString on: html	html tableRow: [		html tableData: [ self renderRowName: anEntryPoint named: aString on: html ].		html tableData: [ self renderRowDescription: anEntryPoint named: aString on: html ].		html tableData: [ self renderRowActions: anEntryPoint named: aString on: html ] ]!

renderRowActions: anEntryPoint named: aString on: html!

renderRowDescription: aHandler named: aString on: html	html render: aHandler class description!

renderRowName: aHandler named: aString on: html	aHandler isDispatcher		ifTrue: [			html anchor				extraPath: aString;				callback: [ self dispatcher: aHandler ];				with: [ html code: aString , '/' ] ]		ifFalse: [			html anchor 				url: aHandler url; 				with: [ html code: aString ] ]!

states	^ Array with: self!

title	^ self dispatcher class description , ' at ' , self dispatcher hierarchyPathString!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	anHtmlRoot title: self title!

updateUrl: aUrl	super updateUrl: aUrl.	self updateUrlHandler hierarchyNames do: [ :each | aUrl addToPath: each ]!

updateUrlHandler	^ self dispatcher! !
!WADispatcherBrowser categoriesFor: #dispatcher!accessing!public! !
!WADispatcherBrowser categoriesFor: #dispatcher:!accessing!public! !
!WADispatcherBrowser categoriesFor: #handlers!accessing!public! !
!WADispatcherBrowser categoriesFor: #initializeOn:!initialization!public! !
!WADispatcherBrowser categoriesFor: #initialRequest:!hooks!public! !
!WADispatcherBrowser categoriesFor: #lookupHandler!actions!public! !
!WADispatcherBrowser categoriesFor: #openHandler:!actions!public! !
!WADispatcherBrowser categoriesFor: #renderContentOn:!public!rendering! !
!WADispatcherBrowser categoriesFor: #renderDispatcherOn:!public!rendering! !
!WADispatcherBrowser categoriesFor: #renderHeadingOn:!public!rendering! !
!WADispatcherBrowser categoriesFor: #renderRow:named:on:!public!rendering/rows! !
!WADispatcherBrowser categoriesFor: #renderRowActions:named:on:!public!rendering/rows! !
!WADispatcherBrowser categoriesFor: #renderRowDescription:named:on:!public!rendering/rows! !
!WADispatcherBrowser categoriesFor: #renderRowName:named:on:!public!rendering/rows! !
!WADispatcherBrowser categoriesFor: #states!hooks!public! !
!WADispatcherBrowser categoriesFor: #title!accessing!public! !
!WADispatcherBrowser categoriesFor: #updateRoot:!public!updating! !
!WADispatcherBrowser categoriesFor: #updateUrl:!public!updating! !
!WADispatcherBrowser categoriesFor: #updateUrlHandler!processing!public! !

!WADispatcherBrowser class methodsFor!

canBeRoot	^ true!

description	^ 'Dispatcher Viewer'!

initialize	(WAAdmin register: self asApplicationAt: 'browse') 		addLibrary: WAToolFiles.	WAAdmin defaultDispatcher defaultName: 'browse'!

new	^ self on: WAAdmin defaultDispatcher!

on: anEntryPoint	^ self basicNew initializeOn: anEntryPoint; yourself! !
!WADispatcherBrowser class categoriesFor: #canBeRoot!public!testing! !
!WADispatcherBrowser class categoriesFor: #description!accessing!public! !
!WADispatcherBrowser class categoriesFor: #initialize!initialization!public! !
!WADispatcherBrowser class categoriesFor: #new!instance creation!public! !
!WADispatcherBrowser class categoriesFor: #on:!instance creation!public! !


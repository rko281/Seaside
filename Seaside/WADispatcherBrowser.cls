"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WADispatcherBrowser
	instanceVariableNames: 'dispatcher'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADispatcherBrowser guid: (GUID fromString: '{237824b4-8da8-4a38-af06-b24e5204ed9e}')!

WADispatcherBrowser comment: ''!

!WADispatcherBrowser categoriesForClass!Unclassified! !

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

!WADispatcherBrowser categoriesForMethods!
dispatcher!accessing!public! !
dispatcher:!accessing!public! !
handlers!accessing!public! !
initializeOn:!initialization!public! !
initialRequest:!hooks!public! !
lookupHandler!actions!public! !
openHandler:!actions!public! !
renderContentOn:!public!rendering! !
renderDispatcherOn:!public!rendering! !
renderHeadingOn:!public!rendering! !
renderRow:named:on:!public!rendering/rows! !
renderRowActions:named:on:!public!rendering/rows! !
renderRowDescription:named:on:!public!rendering/rows! !
renderRowName:named:on:!public!rendering/rows! !
states!hooks!public! !
title!accessing!public! !
updateRoot:!public!updating! !
updateUrl:!public!updating! !
updateUrlHandler!processing!public! !
!

!WADispatcherBrowser class methodsFor!

canBeRoot	^ true!

description	^ 'Dispatcher Viewer'!

initialize	(WAAdmin register: self asApplicationAt: 'browse') 		addLibrary: WAToolFiles.	WAAdmin defaultDispatcher defaultName: 'browse'!

new	^ self on: WAAdmin defaultDispatcher!

on: anEntryPoint	^ self basicNew initializeOn: anEntryPoint; yourself! !

!WADispatcherBrowser class categoriesForMethods!
canBeRoot!public!testing! !
description!accessing!public! !
initialize!initialization!public! !
new!instance creation!public! !
on:!instance creation!public! !
!


﻿"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WADispatcherBrowser
	instanceVariableNames: 'dispatcher'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADispatcherBrowser guid: (GUID fromString: '{0d990db8-0e31-4c0f-a6f9-424b89e9a6f1}')!
WADispatcherBrowser comment: ''!
!WADispatcherBrowser categoriesForClass!Seaside-Tools-Web! !
!WADispatcherBrowser methodsFor!

dispatcher

dispatcher: aDispatcher

handlers

initializeOn: aDispatcher

initialRequest: aRequest

lookupHandler

openHandler: aHandler

renderContentOn: html

renderDispatcherOn: html

renderHeadingOn: html

renderRow: anEntryPoint named: aString on: html

renderRowActions: anEntryPoint named: aString on: html!

renderRowDescription: aHandler named: aString on: html

renderRowName: aHandler named: aString on: html

states

title

updateRoot: anHtmlRoot

updateUrl: aUrl

updateUrlHandler
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

canBeRoot

description

initialize

new

on: anEntryPoint
!WADispatcherBrowser class categoriesFor: #canBeRoot!public!testing! !
!WADispatcherBrowser class categoriesFor: #description!accessing!public! !
!WADispatcherBrowser class categoriesFor: #initialize!initialization!public! !
!WADispatcherBrowser class categoriesFor: #new!instance creation!public! !
!WADispatcherBrowser class categoriesFor: #on:!instance creation!public! !
